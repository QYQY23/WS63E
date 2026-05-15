/*
 * Copyright (c) HiSilicon (Shanghai) Technologies Co., Ltd. 2022. All rights reserved.
 * Description: SLE Identity Client - wearable device.
 */
#include "securec.h"
#include "sle_device_discovery.h"
#include "sle_connection_manager.h"
#include "sle_ssap_client.h"
#include "../inc/sle_identity_client.h"
#include "soc_osal.h"
#include "app_init.h"
#include "common_def.h"
#include "security_sha256.h"

#define SLE_MTU_SIZE_DEFAULT 300
#define SLE_SEEK_INTERVAL_DEFAULT 100
#define SLE_SEEK_WINDOW_DEFAULT 100
#define UUID_16BIT_LEN 2
#define UUID_128BIT_LEN 16

#define ID_NAME_MAX_LEN       20
#define ID_NUMBER_MAX_LEN     20
#define ID_DATA_TOTAL_LEN     (ID_NAME_MAX_LEN + ID_NUMBER_MAX_LEN + 2)

typedef struct {
    uint8_t name[ID_NAME_MAX_LEN];
    uint8_t id_number[ID_NUMBER_MAX_LEN];
    uint8_t gender;
    uint8_t checksum;
} identity_data_t;

#define SLE_AES_IV_LEN              12
#define SLE_AES_TAG_LEN             16
#define SLE_AES_KEY_LEN             16
#define SLE_ENCRYPTED_ID_TOTAL_LEN  (SLE_AES_IV_LEN + ID_DATA_TOTAL_LEN + SLE_AES_TAG_LEN)
#define SLE_SEED_LEN                (SLE_AES_KEY_LEN + SLE_AES_IV_LEN + 1)

static const uint8_t g_sle_ps_key[SLE_AES_KEY_LEN] = {
    0x2B, 0x7E, 0x15, 0x16, 0x28, 0xAE, 0xD2, 0xA6,
    0xAB, 0xF7, 0x15, 0x88, 0x09, 0xCF, 0x4F, 0x3C
};

static void sle_derive_keystream(const uint8_t *iv, uint8_t *keystream_out)
{
    uint8_t seed[SLE_SEED_LEN];
    uint8_t hash[SHA256_HASH_SIZE];
    uint16_t i;

    memcpy_s(seed, sizeof(seed), g_sle_ps_key, SLE_AES_KEY_LEN);
    memcpy_s(seed + SLE_AES_KEY_LEN, SLE_AES_IV_LEN, iv, SLE_AES_IV_LEN);

    seed[SLE_SEED_LEN - 1] = 0x01;
    uapi_drv_cipher_sha256(seed, sizeof(seed), hash, SHA256_HASH_SIZE);
    for (i = 0; i < SHA256_HASH_SIZE && i < ID_DATA_TOTAL_LEN; i++) keystream_out[i] = hash[i];

    seed[SLE_SEED_LEN - 1] = 0x02;
    uapi_drv_cipher_sha256(seed, sizeof(seed), hash, SHA256_HASH_SIZE);
    for (i = 0; i < (ID_DATA_TOTAL_LEN - SHA256_HASH_SIZE); i++) keystream_out[SHA256_HASH_SIZE + i] = hash[i];
}

static void sle_compute_mac(const uint8_t *iv, const uint8_t *ciphertext, uint8_t *mac_out)
{
    uint8_t buf[SLE_AES_KEY_LEN + SLE_AES_IV_LEN + ID_DATA_TOTAL_LEN];
    uint8_t hash[SHA256_HASH_SIZE];
    memcpy_s(buf, SLE_AES_KEY_LEN, g_sle_ps_key, SLE_AES_KEY_LEN);
    memcpy_s(buf + SLE_AES_KEY_LEN, SLE_AES_IV_LEN, iv, SLE_AES_IV_LEN);
    memcpy_s(buf + SLE_AES_KEY_LEN + SLE_AES_IV_LEN, ID_DATA_TOTAL_LEN, ciphertext, ID_DATA_TOTAL_LEN);
    uapi_drv_cipher_sha256(buf, sizeof(buf), hash, SHA256_HASH_SIZE);
    memcpy_s(mac_out, SLE_AES_TAG_LEN, hash, SLE_AES_TAG_LEN);
}

static errcode_t sle_crypto_decrypt_identity(uint8_t *packet_in, identity_data_t *plain_out)
{
    uint8_t *iv = packet_in;
    uint8_t *ciphertext = packet_in + SLE_AES_IV_LEN;
    uint8_t *recv_mac = packet_in + SLE_AES_IV_LEN + ID_DATA_TOTAL_LEN;
    uint8_t expected_mac[SLE_AES_TAG_LEN];
    uint8_t keystream[ID_DATA_TOTAL_LEN];
    uint16_t i;

    sle_compute_mac(iv, ciphertext, expected_mac);
    if (memcmp(expected_mac, recv_mac, SLE_AES_TAG_LEN) != 0) {
        osal_printk("[id_client] MAC mismatch!\r\n");
        return ERRCODE_FAIL;
    }

    sle_derive_keystream(iv, keystream);
    for (i = 0; i < ID_DATA_TOTAL_LEN; i++) {
        ((uint8_t *)plain_out)[i] = ciphertext[i] ^ keystream[i];
    }

    return ERRCODE_SUCC;
}

static sle_announce_seek_callbacks_t g_seek_cbk = {0};
static sle_connection_callbacks_t g_connect_cbk = {0};
static ssapc_callbacks_t g_ssapc_cbk = {0};
static sle_addr_t g_remote_addr = {0};
static uint16_t g_conn_id = 0;
static ssapc_find_service_result_t g_find_service_result = {0};
static uint8_t g_pending_notify = 0;
static uint16_t g_pending_conn_id = 0;
static identity_data_t g_stored_identity = {0};
static uint8_t g_identity_received = 0;

static void sle_id_start_scan(void);

static void sle_id_send_paired_reply(uint16_t conn_id)
{
    uint8_t reply_buf[64];
    uint16_t name_len;

    for (name_len = 0; name_len < ID_NAME_MAX_LEN; name_len++) {
        if (g_stored_identity.name[name_len] == 0) break;
    }

    memcpy_s(reply_buf, sizeof(reply_buf), "PAIRED:", 7);
    memcpy_s(reply_buf + 7, sizeof(reply_buf) - 7, g_stored_identity.name, name_len);
    reply_buf[7 + name_len] = '\0';

    ssapc_write_param_t param = {0};
    param.handle = g_find_service_result.end_hdl;
    param.type = SSAP_PROPERTY_TYPE_VALUE;
    param.data_len = 7 + name_len;
    param.data = reply_buf;

    osal_printk("[id_client] >>> Phase2: Sending PAIRED reply: %s (h=0x%x)\r\n", reply_buf, param.handle);
    if (ssapc_write_req(0, conn_id, &param) == ERRCODE_SUCC) {
        osal_printk("[id_client] >>> Phase2 SUCCESS! PAIRED reply sent to server.\r\n");
    }
}

static void sle_id_notification_cbk(uint8_t client_id, uint16_t conn_id, ssapc_handle_value_t *data,
    errcode_t status)
{
    osal_printk("[id_client] notification cbk client_id:%d conn_id:%d status:%d\r\n", client_id, conn_id, status);
    osal_printk("[id_client] notification data len:%d\r\n", data->data_len);

    if (status != ERRCODE_SUCC) {
        return;
    }

    if (data->data_len == SLE_ENCRYPTED_ID_TOTAL_LEN) {
        identity_data_t decrypted;
        osal_printk("[id_client] <<< Encrypted packet (%d bytes), decrypting...\r\n", data->data_len);
        if (sle_crypto_decrypt_identity(data->data, &decrypted) != ERRCODE_SUCC) {
            osal_printk("[id_client] <<< Decrypt FAILED!\r\n");
            return;
        }

        uint8_t checksum = 0;
        for (uint16_t i = 0; i < ID_NAME_MAX_LEN; i++) checksum ^= decrypted.name[i];
        for (uint16_t i = 0; i < ID_NUMBER_MAX_LEN; i++) checksum ^= decrypted.id_number[i];
        checksum ^= decrypted.gender;

        osal_printk("[id_client] <<< Decrypted identity: name=[%s] id=[%s] gender=%d\r\n",
            decrypted.name, decrypted.id_number, decrypted.gender);

        if (checksum == decrypted.checksum) {
            osal_printk("[id_client] <<< Identity checksum OK, storing...\r\n");
            memcpy_s(&g_stored_identity, sizeof(identity_data_t), &decrypted, sizeof(identity_data_t));
            g_identity_received = 1;

            if (g_find_service_result.start_hdl != 0) {
                sle_id_send_paired_reply(conn_id);
            } else {
                osal_printk("[id_client] handle not ready, caching reply...\r\n");
                g_pending_notify = 1;
                g_pending_conn_id = conn_id;
            }
        } else {
            osal_printk("[id_client] <<< Identity checksum ERROR: calc=0x%02x recv=0x%02x\r\n",
                checksum, decrypted.checksum);
        }
    } else {
        osal_printk("[id_client] <<< unexpected data len: %d (expected %d)\r\n",
            data->data_len, SLE_ENCRYPTED_ID_TOTAL_LEN);
    }
}

static void sle_id_indication_cbk(uint8_t client_id, uint16_t conn_id, ssapc_handle_value_t *data,
    errcode_t status)
{
    osal_printk("[id_client] indication cbk client_id:%d conn_id:%d status:%d\r\n", client_id, conn_id, status);
    osal_printk("[id_client] indication handle:%d, type:%d, data_len:%d\r\n", data->handle, data->type, data->data_len);
    for (uint16_t i = 0; i < data->data_len; i++) {
        osal_printk("[id_client] indication data[%d] 0x%02x\r\n", i, data->data[i]);
    }
}

static void sle_id_sle_enable_cbk(errcode_t status)
{
    if (status == ERRCODE_SUCC) {
        sle_id_start_scan();
    }
}

static void sle_id_seek_enable_cbk(errcode_t status)
{
    if (status == ERRCODE_SUCC) {
        return;
    }
}

static void sle_id_seek_disable_cbk(errcode_t status)
{
    if (status == ERRCODE_SUCC) {
        sle_remove_paired_remote_device(&g_remote_addr);
        sle_connect_remote_device(&g_remote_addr);
    }
}

static uint8_t g_sle_expected_addr[SLE_ADDR_LEN] = {0x11, 0x22, 0x33, 0x44, 0x55, 0x66};

static void sle_id_seek_result_info_cbk(sle_seek_result_info_t *seek_result_data)
{
    if (seek_result_data == NULL) {
        osal_printk("[id_client] seek result is NULL\r\n");
        return;
    }

    if (memcmp((void *)seek_result_data->addr.addr, (void *)g_sle_expected_addr, SLE_ADDR_LEN) == 0) {
        osal_printk("[id_client] Found server! addr:%02x:%02x:%02x:%02x:%02x:%02x\r\n",
            seek_result_data->addr.addr[0], seek_result_data->addr.addr[1],
            seek_result_data->addr.addr[2], seek_result_data->addr.addr[3],
            seek_result_data->addr.addr[4], seek_result_data->addr.addr[5]);
        (void)memcpy_s(&g_remote_addr, sizeof(sle_addr_t), &seek_result_data->addr, sizeof(sle_addr_t));
        sle_stop_seek();
    }
}

static void sle_id_connect_state_changed_cbk(uint16_t conn_id, const sle_addr_t *addr,
    sle_acb_state_t conn_state, sle_pair_state_t pair_state, sle_disc_reason_t disc_reason)
{
    osal_printk("[id_client] conn state changed conn_id:0x%x, addr:%02x:%02x:%02x:%02x:%02x:%02x\r\n",
        conn_id, addr->addr[0], addr->addr[1], addr->addr[2], addr->addr[3], addr->addr[4], addr->addr[5]);
    osal_printk("[id_client] disc_reason:0x%x, conn_state:0x%x, pair_state:0x%x\r\n",
        disc_reason, conn_state, pair_state);
    if (conn_state == SLE_ACB_STATE_CONNECTED) {
        if (pair_state == SLE_PAIR_NONE) {
            sle_pair_remote_device(&g_remote_addr);
        }
        g_conn_id = conn_id;
    }
}

static void sle_id_pair_complete_cbk(uint16_t conn_id, const sle_addr_t *addr, errcode_t status)
{
    osal_printk("[id_client] pair complete conn_id:0x%x, status:0x%x, addr:%02x:%02x:%02x:%02x:%02x:%02x\r\n",
        conn_id, status, addr->addr[0], addr->addr[1], addr->addr[2], addr->addr[3], addr->addr[4], addr->addr[5]);
    if (status == ERRCODE_SUCC) {
        ssap_exchange_info_t info = {0};
        info.mtu_size = SLE_MTU_SIZE_DEFAULT;
        info.version = 1;
        ssapc_exchange_info_req(1, conn_id, &info);
    }
}

static void sle_id_exchange_info_cbk(uint8_t client_id, uint16_t conn_id, ssap_exchange_info_t *param,
    errcode_t status)
{
    osal_printk("[id_client] exchange info client_id:0x%x, mtu:0x%x, version:0x%x, status:0x%x\r\n",
        client_id, param->mtu_size, param->version, status);
    if (status == ERRCODE_SUCC) {
        ssapc_find_structure_param_t find_param = {0};
        find_param.type = SSAP_FIND_TYPE_PRIMARY_SERVICE;
        find_param.start_hdl = 1;
        find_param.end_hdl = 0xFFFF;
        ssapc_find_structure(0, conn_id, &find_param);
    }
}

static void sle_id_find_structure_cbk(uint8_t client_id, uint16_t conn_id,
    ssapc_find_service_result_t *service, errcode_t status)
{
    osal_printk("[id_client] find structure client:0x%x conn_id:0x%x status:0x%x\r\n", client_id, conn_id, status);
    osal_printk("[id_client] find structure start_hdl:0x%04x, end_hdl:0x%04x, uuid_len:0x%x\r\n",
        service->start_hdl, service->end_hdl, service->uuid.len);
    if (service->uuid.len == UUID_16BIT_LEN) {
        osal_printk("[id_client] structure uuid:[0x%02x][0x%02x]\r\n",
            service->uuid.uuid[14], service->uuid.uuid[15]);
    }
    if (status == ERRCODE_SUCC) {
        g_find_service_result.start_hdl = service->start_hdl;
        g_find_service_result.end_hdl = service->end_hdl;
        memcpy_s(&g_find_service_result.uuid, sizeof(sle_uuid_t), &service->uuid, sizeof(sle_uuid_t));
    }
}

static void sle_id_find_structure_cmp_cbk(uint8_t client_id, uint16_t conn_id,
    ssapc_find_structure_result_t *structure_result, errcode_t status)
{
    osal_printk("[id_client] find structure cmp client_id:0x%x conn_id:0x%x status:0x%x type:%d\r\n",
        client_id, conn_id, status, structure_result->type);
    if (structure_result->uuid.len == UUID_16BIT_LEN) {
        osal_printk("[id_client] structure uuid:[0x%02x][0x%02x]\r\n",
            structure_result->uuid.uuid[14], structure_result->uuid.uuid[15]);
    }
    osal_printk("[id_client] >>> Service discovery complete, waiting for server notification...\r\n");
    if (g_pending_notify) {
        g_pending_notify = 0;
        osal_printk("[id_client] flushing cached reply...\r\n");
        sle_id_send_paired_reply(g_pending_conn_id);
    }
}

static void sle_id_find_property_cbk(uint8_t client_id, uint16_t conn_id,
    ssapc_find_property_result_t *property, errcode_t status)
{
    osal_printk("[id_client] find property client:0x%x conn:0x%x handle:0x%x op_ind:0x%x desc_cnt:0x%x status:0x%x\r\n",
        client_id, conn_id, property->handle, property->operate_indication, property->descriptors_count, status);
}

static void sle_id_write_cfm_cbk(uint8_t client_id, uint16_t conn_id,
    ssapc_write_result_t *write_result, errcode_t status)
{
    osal_printk("[id_client] write cfm client_id:0x%x conn_id:0x%x status:0x%x handle:0x%x\r\n",
        client_id, conn_id, status, write_result->handle);
}

static void sle_id_read_cfm_cbk(uint8_t client_id, uint16_t conn_id,
    ssapc_handle_value_t *read_data, errcode_t status)
{
    osal_printk("[id_client] read cfm client_id:0x%x conn_id:0x%x status:0x%x\r\n", client_id, conn_id, status);
    osal_printk("[id_client] read cfm handle:0x%x, type:0x%x, len:0x%x\r\n",
        read_data->handle, read_data->type, read_data->data_len);
}

static void sle_id_ssapc_cbk_register(void)
{
    g_ssapc_cbk.exchange_info_cb = sle_id_exchange_info_cbk;
    g_ssapc_cbk.find_structure_cb = sle_id_find_structure_cbk;
    g_ssapc_cbk.find_structure_cmp_cb = sle_id_find_structure_cmp_cbk;
    g_ssapc_cbk.ssapc_find_property_cbk = sle_id_find_property_cbk;
    g_ssapc_cbk.write_cfm_cb = sle_id_write_cfm_cbk;
    g_ssapc_cbk.read_cfm_cb = sle_id_read_cfm_cbk;
    g_ssapc_cbk.notification_cb = sle_id_notification_cbk;
    g_ssapc_cbk.indication_cb = sle_id_indication_cbk;
}

static void sle_id_seek_cbk_register(void)
{
    g_seek_cbk.sle_enable_cb = sle_id_sle_enable_cbk;
    g_seek_cbk.seek_enable_cb = sle_id_seek_enable_cbk;
    g_seek_cbk.seek_disable_cb = sle_id_seek_disable_cbk;
    g_seek_cbk.seek_result_cb = sle_id_seek_result_info_cbk;
}

static void sle_id_connect_cbk_register(void)
{
    g_connect_cbk.connect_state_changed_cb = sle_id_connect_state_changed_cbk;
    g_connect_cbk.pair_complete_cb = sle_id_pair_complete_cbk;
}

static void sle_id_start_scan(void)
{
    sle_seek_param_t param = {0};
    param.own_addr_type = 0;
    param.filter_duplicates = 0;
    param.seek_filter_policy = 0;
    param.seek_phys = 1;
    param.seek_type[0] = 0;
    param.seek_interval[0] = SLE_SEEK_INTERVAL_DEFAULT;
    param.seek_window[0] = SLE_SEEK_WINDOW_DEFAULT;
    sle_set_seek_param(&param);
    sle_start_seek();
}

static int sle_identity_client_task(const char *arg)
{
    unused(arg);

    (void)osal_msleep(5000);

    osal_printk("[id_client] try enable.\r\n");

    sle_id_seek_cbk_register();
    sle_id_connect_cbk_register();
    sle_id_ssapc_cbk_register();

    if (sle_announce_seek_register_callbacks(&g_seek_cbk) != ERRCODE_SUCC) {
        osal_printk("[id_client] sle announce seek register callbacks fail !\r\n");
        return -1;
    }

    if (sle_connection_register_callbacks(&g_connect_cbk) != ERRCODE_SUCC) {
        osal_printk("[id_client] sle connection register callbacks fail !\r\n");
        return -1;
    }

    if (ssapc_register_callbacks(&g_ssapc_cbk) != ERRCODE_SUCC) {
        osal_printk("[id_client] sle ssapc register callbacks fail !\r\n");
        return -1;
    }

    if (enable_sle() != ERRCODE_SUCC) {
        osal_printk("[id_client] sle enable fail !\r\n");
        return -1;
    }

    osal_printk("[id_client] init ok, scanning...\r\n");

    return 0;
}

#define SLE_ID_CLI_TASK_PRIO 24
#define SLE_ID_CLI_STACK_SIZE 0x2000

static void sle_identity_client_entry(void)
{
    osal_task *task_handle = NULL;

    osal_kthread_lock();
    task_handle = osal_kthread_create((osal_kthread_handler)sle_identity_client_task, 0, "id_client",
                                      SLE_ID_CLI_STACK_SIZE);
    if (task_handle != NULL) {
        osal_kthread_set_priority(task_handle, SLE_ID_CLI_TASK_PRIO);
        osal_kfree(task_handle);
    }
    osal_kthread_unlock();
}

app_run(sle_identity_client_entry);
