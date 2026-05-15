/*
 * Copyright (c) HiSilicon (Shanghai) Technologies Co., Ltd. 2023. All rights reserved.
 * Description: SLE Identity Server - main control device.
 */
#include "app_init.h"
#include "watchdog.h"
#include "tcxo.h"
#include "systick.h"
#include "securec.h"
#include "errcode.h"
#include "osal_addr.h"
#include "soc_osal.h"
#include "common_def.h"
#include "nv.h"
#include "sle_common.h"
#include "sle_errcode.h"
#include "sle_ssap_server.h"
#include "sle_connection_manager.h"
#include "sle_device_discovery.h"
#include "sle_identity_server_adv.h"
#include "sle_identity_server.h"
#include "security_sha256.h"
#include "trng.h"

#define OCTET_BIT_LEN 8
#define UUID_LEN_2     2
#define BT_INDEX_0     0
#define BT_INDEX_4     4
#define BT_INDEX_5     5
#define ID_SERVER_STACK_SIZE 0x2000
#define ID_SERVER_TASK_PRIO 26

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

static errcode_t sle_crypto_encrypt_identity(identity_data_t *plain, uint8_t *packet_out)
{
    errcode_t ret;
    uint8_t iv[SLE_AES_IV_LEN];
    uint8_t keystream[ID_DATA_TOTAL_LEN];
    uint8_t *ciphertext = packet_out + SLE_AES_IV_LEN;
    uint8_t *mac_out = packet_out + SLE_AES_IV_LEN + ID_DATA_TOTAL_LEN;
    uint16_t i;

    ret = uapi_drv_cipher_trng_get_random_bytes(iv, SLE_AES_IV_LEN);
    if (ret != ERRCODE_SUCC) {
        osal_printk("[id_server] TRNG IV gen failed: 0x%x\r\n", ret);
        return ERRCODE_SLE_FAIL;
    }

    sle_derive_keystream(iv, keystream);
    for (i = 0; i < ID_DATA_TOTAL_LEN; i++) {
        ciphertext[i] = ((uint8_t *)plain)[i] ^ keystream[i];
    }

    sle_compute_mac(iv, ciphertext, mac_out);
    memcpy_s(packet_out, SLE_AES_IV_LEN, iv, SLE_AES_IV_LEN);

    return ERRCODE_SUCC;
}

#define encode2byte_little(_ptr, data) \
    do { \
        *(uint8_t *)((_ptr) + 1) = (uint8_t)((data) >> 8); \
        *(uint8_t *)(_ptr) = (uint8_t)(data); \
    } while (0)

static char g_sle_uuid_app_uuid[UUID_LEN_2] = {0x0, 0x0};
static char g_sle_property_value[OCTET_BIT_LEN] = {0};
static uint16_t g_sle_conn_hdl = 0;
static uint8_t g_server_id = 0;
static uint16_t g_service_handle = 0;
static uint16_t g_property_handle = 0;

static uint8_t sle_uuid_base[] = {
    0x37, 0xBE, 0xA8, 0x80, 0xFC, 0x70, 0x11, 0xEA,
    0xB7, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
};

static void sle_uuid_set_base(sle_uuid_t *out)
{
    memcpy_s(out->uuid, SLE_UUID_LEN, sle_uuid_base, SLE_UUID_LEN);
    out->len = UUID_LEN_2;
}

static void sle_uuid_setu2(uint16_t u2, sle_uuid_t *out)
{
    sle_uuid_set_base(out);
    out->len = UUID_LEN_2;
    encode2byte_little(&out->uuid[14], u2);
}

errcode_t sle_uuid_server_send_report_by_handle_id(uint8_t *data, uint16_t len, uint16_t connect_id)
{
    ssaps_ntf_ind_t param = {0};
    param.handle = g_property_handle;
    param.type = SSAP_PROPERTY_TYPE_VALUE;
    param.value = data;
    param.value_len = len;
    ssaps_notify_indicate(g_server_id, connect_id, &param);
    return ERRCODE_SLE_SUCCESS;
}

static void ssaps_write_request_cbk(uint8_t server_id, uint16_t conn_id, ssaps_req_write_cb_t *write_cb_para,
    errcode_t status)
{
    osal_printk("[id_server] <<< write request from client, server_id:%d, conn_id:%d, handle:%d, status:%d\r\n",
        server_id, conn_id, write_cb_para->handle, status);
    osal_printk("[id_server] <<< received %d bytes: %s\r\n",
        write_cb_para->length, write_cb_para->value);

    if (write_cb_para->length >= 7 &&
        memcmp(write_cb_para->value, "PAIRED:", 7) == 0) {
        osal_printk("[id_server] >>> Phase2 SUCCESS! Wearable paired with: %s\r\n",
            write_cb_para->value + 7);
    }
}

static void ssaps_start_service_cbk(uint8_t server_id, uint16_t handle, errcode_t status)
{
    osal_printk("[id_server] start service cbk server_id:%d, handle:%d, status:%d\r\n",
        server_id, handle, status);
}

static void ssaps_mtu_changed_cbk(uint8_t server_id, uint16_t conn_id, ssap_exchange_info_t *mtu_size,
    errcode_t status)
{
    osal_printk("[id_server] mtu changed server_id:%d, conn_id:%d, mtu_size:%d, status:%d\r\n",
        server_id, conn_id, mtu_size->mtu_size, status);
}

static void ssaps_read_request_cbk(uint8_t server_id, uint16_t conn_id, ssaps_req_read_cb_t *read_cb_para,
    errcode_t status)
{
    osal_printk("[id_server] read request server_id:0x%x, conn_id:0x%x, handle:0x%x, status:0x%x\r\n",
        server_id, conn_id, read_cb_para->handle, status);
}

static void sle_ssaps_register_cbks(void)
{
    ssaps_callbacks_t ssaps_cbk = {0};
    ssaps_cbk.start_service_cb = ssaps_start_service_cbk;
    ssaps_cbk.mtu_changed_cb = ssaps_mtu_changed_cbk;
    ssaps_cbk.read_request_cb = ssaps_read_request_cbk;
    ssaps_cbk.write_request_cb = ssaps_write_request_cbk;
    ssaps_register_callbacks(&ssaps_cbk);
}

static errcode_t sle_id_server_service_add(void)
{
    sle_uuid_t service_uuid = {0};
    sle_uuid_setu2(SLE_ID_SERVER_SERVICE_UUID, &service_uuid);
    errcode_t ret = ssaps_add_service_sync(g_server_id, &service_uuid, 1, &g_service_handle);
    if (ret != ERRCODE_SLE_SUCCESS) {
        osal_printk("[id_server] add service fail, ret:0x%x\r\n", ret);
        return ERRCODE_SLE_FAIL;
    }
    return ERRCODE_SLE_SUCCESS;
}

static errcode_t sle_id_server_property_add(void)
{
    ssaps_property_info_t property = {0};
    ssaps_desc_info_t descriptor = {0};
    uint8_t ntf_value[] = {0x01, 0x0};

    property.permissions = SLE_ID_PROPERTY_PERMISSIONS;
    sle_uuid_setu2(SLE_ID_SERVER_NTF_REPORT_UUID, &property.uuid);
    property.value = osal_vmalloc(sizeof(g_sle_property_value));
    property.operate_indication = SSAP_OPERATE_INDICATION_BIT_READ | SSAP_OPERATE_INDICATION_BIT_WRITE | SSAP_OPERATE_INDICATION_BIT_NOTIFY;
    if (property.value == NULL) {
        osal_printk("[id_server] property mem fail\r\n");
        return ERRCODE_SLE_FAIL;
    }
    if (memcpy_s(property.value, sizeof(g_sle_property_value), g_sle_property_value,
        sizeof(g_sle_property_value)) != EOK) {
        osal_vfree(property.value);
        return ERRCODE_SLE_FAIL;
    }
    errcode_t ret = ssaps_add_property_sync(g_server_id, g_service_handle, &property, &g_property_handle);
    if (ret != ERRCODE_SLE_SUCCESS) {
        osal_printk("[id_server] add property fail, ret:0x%x\r\n", ret);
        osal_vfree(property.value);
        return ERRCODE_SLE_FAIL;
    }
    descriptor.permissions = SLE_ID_DESCRIPTOR_PERMISSIONS;
    descriptor.operate_indication = SSAP_OPERATE_INDICATION_BIT_READ | SSAP_OPERATE_INDICATION_BIT_WRITE;
    descriptor.type = SSAP_DESCRIPTOR_USER_DESCRIPTION;
    descriptor.value = ntf_value;
    descriptor.value_len = sizeof(ntf_value);
    ret = ssaps_add_descriptor_sync(g_server_id, g_service_handle, g_property_handle, &descriptor);
    if (ret != ERRCODE_SLE_SUCCESS) {
        osal_printk("[id_server] add descriptor fail, ret:0x%x\r\n", ret);
        osal_vfree(property.value);
        return ERRCODE_SLE_FAIL;
    }
    osal_vfree(property.value);
    return ERRCODE_SLE_SUCCESS;
}

static errcode_t sle_id_server_add(void)
{
    sle_uuid_t app_uuid = {0};
    app_uuid.len = sizeof(g_sle_uuid_app_uuid);
    if (memcpy_s(app_uuid.uuid, app_uuid.len, g_sle_uuid_app_uuid, sizeof(g_sle_uuid_app_uuid)) != EOK) {
        return ERRCODE_SLE_FAIL;
    }
    ssaps_register_server(&app_uuid, &g_server_id);
    if (sle_id_server_service_add() != ERRCODE_SLE_SUCCESS) {
        ssaps_unregister_server(g_server_id);
        return ERRCODE_SLE_FAIL;
    }
    if (sle_id_server_property_add() != ERRCODE_SLE_SUCCESS) {
        ssaps_unregister_server(g_server_id);
        return ERRCODE_SLE_FAIL;
    }
    osal_printk("[id_server] service added, server_id:0x%x, service_handle:0x%x, property_handle:0x%x\r\n",
        g_server_id, g_service_handle, g_property_handle);
    errcode_t ret = ssaps_start_service(g_server_id, g_service_handle);
    if (ret != ERRCODE_SLE_SUCCESS) {
        osal_printk("[id_server] start service fail, ret:0x%x\r\n", ret);
        return ERRCODE_SLE_FAIL;
    }
    return ERRCODE_SLE_SUCCESS;
}

static void sle_id_server_send_identity(uint16_t conn_id)
{
    identity_data_t id_data;
    memset_s(&id_data, sizeof(id_data), 0, sizeof(id_data));

    const uint8_t sim_name[]  = "\xe8\xbf\x9d\xe5\xbb\xba";
    const uint8_t sim_idno[]  = "kskbl\xef\xbc\x9fzdjd666zkbl";
    const uint8_t sim_gender  = 0xAA;
    const uint16_t sim_name_len = sizeof(sim_name) - 1;
    const uint16_t sim_idno_len = sizeof(sim_idno) - 1;

    memcpy_s(id_data.name, ID_NAME_MAX_LEN, sim_name, sim_name_len);
    memcpy_s(id_data.id_number, ID_NUMBER_MAX_LEN, sim_idno, sim_idno_len);
    id_data.gender = sim_gender;

    uint8_t checksum = 0;
    for (uint16_t i = 0; i < ID_NAME_MAX_LEN; i++) {
        checksum ^= id_data.name[i];
    }
    for (uint16_t i = 0; i < ID_NUMBER_MAX_LEN; i++) {
        checksum ^= id_data.id_number[i];
    }
    checksum ^= id_data.gender;
    id_data.checksum = checksum;

    uint8_t enc_packet[SLE_ENCRYPTED_ID_TOTAL_LEN];
    memset_s(enc_packet, sizeof(enc_packet), 0, sizeof(enc_packet));

    if (sle_crypto_encrypt_identity(&id_data, enc_packet) != ERRCODE_SUCC) {
        osal_printk("[id_server] encrypt identity failed, skip send\r\n");
        return;
    }

    osal_printk("[id_server] >>> Sending ENCRYPTED identity (conn_id:%d, %d bytes)...\r\n",
        conn_id, (int)sizeof(enc_packet));
    osal_printk("[id_server] >>> name:[%s] id:[%s] gender:0x%02x -> SHA256-XOR\r\n",
        id_data.name, id_data.id_number, id_data.gender);

    sle_uuid_server_send_report_by_handle_id(enc_packet, sizeof(enc_packet), conn_id);
}

static void sle_connect_state_changed_cbk(uint16_t conn_id, const sle_addr_t *addr,
    sle_acb_state_t conn_state, sle_pair_state_t pair_state, sle_disc_reason_t disc_reason)
{
    osal_printk("[id_server] connect state changed conn_id:0x%02x, conn_state:0x%x, pair_state:0x%x, disc_reason:0x%x\r\n",
        conn_id, conn_state, pair_state, disc_reason);
    osal_printk("[id_server] remote addr:0x%02x:**:**:**:0x%02x:0x%02x\r\n",
        addr->addr[BT_INDEX_0], addr->addr[BT_INDEX_4], addr->addr[BT_INDEX_5]);
    g_sle_conn_hdl = conn_id;
    if (conn_state == SLE_ACB_STATE_CONNECTED) {
        osal_printk("[id_server] >>> Client connected! Sending identity data...\r\n");
        sle_id_server_send_identity(conn_id);
    } else if (conn_state == SLE_ACB_STATE_DISCONNECTED) {
        osal_printk("[id_server] Client disconnected, restart advertising...\r\n");
        sle_start_announce(SLE_ADV_HANDLE_DEFAULT);
    }
}

static void sle_pair_complete_cbk(uint16_t conn_id, const sle_addr_t *addr, errcode_t status)
{
    osal_printk("[id_server] pair complete conn_id:0x%02x, status:0x%x\r\n", conn_id, status);
    osal_printk("[id_server] pair complete addr:0x%02x:**:**:**:0x%02x:0x%02x\r\n",
        addr->addr[BT_INDEX_0], addr->addr[BT_INDEX_4], addr->addr[BT_INDEX_5]);
    if (status != ERRCODE_SLE_SUCCESS) {
        osal_printk("[id_server] pair failed, remove pair and restart adv\r\n");
        sle_remove_paired_remote_device(addr);
        sle_start_announce(SLE_ADV_HANDLE_DEFAULT);
    }
}

static void sle_auth_complete_cbk(uint16_t conn_id, const sle_addr_t *addr, errcode_t status,
    const sle_auth_info_evt_t *evt)
{
    unused(conn_id);
    unused(evt);
    osal_printk("[id_server] auth cmp:0x%x\r\n", status);
    if (status != ERRCODE_SLE_SUCCESS) {
        osal_printk("[id_server] auth failed, remove pair and restart adv\r\n");
        sle_remove_paired_remote_device(addr);
        sle_start_announce(SLE_ADV_HANDLE_DEFAULT);
    }
}

static void sle_sample_update_cbk(uint16_t conn_id, errcode_t status, const sle_connection_param_update_evt_t *param)
{
    unused(status);
    osal_printk("[id_server] update state conn_id:%d, interval = 0x%02x\n", conn_id, param->interval);
}

static void sle_sample_update_req_cbk(uint16_t conn_id, errcode_t status,
    const sle_connection_param_update_req_t *param)
{
    unused(conn_id);
    unused(status);
    osal_printk("[id_server] update req interval_min:0x%02x, interval_max:0x%02x\n",
        param->interval_min, param->interval_max);
}

static void sle_conn_register_cbks(void)
{
    sle_connection_callbacks_t conn_cbks = {0};
    conn_cbks.connect_state_changed_cb = sle_connect_state_changed_cbk;
    conn_cbks.auth_complete_cb = sle_auth_complete_cbk;
    conn_cbks.pair_complete_cb = sle_pair_complete_cbk;
    conn_cbks.connect_param_update_req_cb = sle_sample_update_req_cbk;
    conn_cbks.connect_param_update_cb = sle_sample_update_cbk;
    sle_connection_register_callbacks(&conn_cbks);
}

static void sle_id_server_set_nv(void)
{
    uint16_t nv_value_len = 0;
    uint8_t nv_value = 0;
    uapi_nv_read(0x20A0, sizeof(uint16_t), &nv_value_len, &nv_value);
    if (nv_value != 7) {
        nv_value = 7;
        uapi_nv_write(0x20A0, (uint8_t *)&(nv_value), sizeof(nv_value));
    }
    osal_printk("[id_server] NV power set to %d.\r\n", nv_value);
}

static void sle_ssaps_set_info(void)
{
    ssap_exchange_info_t info = {0};
    info.mtu_size = 1500;
    info.version = 1;
    ssaps_set_info(g_server_id, &info);
}

static void sle_set_local_addr_init(void)
{
    sle_addr_t addr = {0};
    uint8_t mac[SLE_ADDR_LEN] = {0x11, 0x22, 0x33, 0x44, 0x55, 0x66};
    addr.type = 0;
    memcpy_s(addr.addr, SLE_ADDR_LEN, mac, SLE_ADDR_LEN);
    sle_set_local_addr(&addr);
}

void sle_enable_server_cbk(void)
{
    sle_id_server_set_nv();
    sle_id_server_add();
    sle_ssaps_set_info();
    sle_set_local_addr_init();
    sle_identity_server_adv_init();
    osal_printk("[id_server] init ok, waiting for client connections...\r\n");
}

errcode_t sle_identity_server_init(void)
{
    uapi_watchdog_disable();
    sle_announce_register_cbks();
    sle_conn_register_cbks();
    sle_ssaps_register_cbks();
    enable_sle();
    printf("sle identity server enable end.\r\n");
    return ERRCODE_SLE_SUCCESS;
}

int sle_identity_server_main(void)
{
    osal_msleep(1000);
    sle_identity_server_init();
    return 0;
}

static void sle_identity_server_entry(void)
{
    osal_task *task_handle = NULL;
    osal_kthread_lock();
    task_handle = osal_kthread_create((osal_kthread_handler)sle_identity_server_main,
        0, "id_server", ID_SERVER_STACK_SIZE);
    if (task_handle != NULL) {
        osal_kthread_set_priority(task_handle, ID_SERVER_TASK_PRIO);
        osal_kfree(task_handle);
    }
    osal_kthread_unlock();
}

app_run(sle_identity_server_entry);
