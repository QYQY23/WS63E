/*
 * Copyright (c) HiSilicon (Shanghai) Technologies Co., Ltd. 2023. All rights reserved.
 * Description: SLE ADV config for identity server.
 */
#include "securec.h"
#include "errcode.h"
#include "osal_addr.h"
#include "osal_debug.h"
#include "sle_common.h"
#include "sle_device_discovery.h"
#include "sle_connection_manager.h"
#include "sle_errcode.h"
#include "sle_identity_server.h"
#include "sle_identity_server_adv.h"

#define NAME_MAX_LENGTH 15
#define SLE_CONN_INTV_MIN_DEFAULT                 0x14
#define SLE_CONN_INTV_MAX_DEFAULT                 0x14
#define SLE_ADV_INTERVAL_MIN_DEFAULT              0xC8
#define SLE_ADV_INTERVAL_MAX_DEFAULT              0xC8
#define SLE_CONN_SUPERVISION_TIMEOUT_DEFAULT      0x1F4
#define SLE_CONN_MAX_LATENCY                      0x1F3
#define SLE_ADV_TX_POWER                          18
#define SLE_ADV_DATA_LEN_MAX                      251

#define SLE_ADV_DATA_TYPE_DISCOVERY_LEN     1
#define SLE_ADV_DATA_TYPE_ACCESS_LEN        1

static uint8_t g_sle_local_name[] = "id_server";

static uint16_t sle_set_adv_local_name(uint8_t *adv_data, uint16_t max_len)
{
    uint8_t local_name_len = sizeof(g_sle_local_name) - 1;
    adv_data[0] = local_name_len + 1;
    adv_data[1] = SLE_ADV_DATA_TYPE_COMPLETE_LOCAL_NAME;
    if (memcpy_s(&adv_data[2], max_len - 2, g_sle_local_name, local_name_len) != EOK) {
        return 0;
    }
    return (uint16_t)(2 + local_name_len);
}

static uint16_t sle_set_adv_data(uint8_t *adv_data)
{
    uint16_t idx = 0;
    struct sle_adv_common_value adv_disc_level;
    adv_disc_level.length = sizeof(struct sle_adv_common_value) - 1;
    adv_disc_level.type = SLE_ADV_DATA_TYPE_DISCOVERY_LEVEL;
    adv_disc_level.value = SLE_ANNOUNCE_LEVEL_NORMAL;
    if (memcpy_s(&adv_data[idx], SLE_ADV_DATA_LEN_MAX - idx, &adv_disc_level,
        sizeof(struct sle_adv_common_value)) != EOK) {
        return 0;
    }
    idx += sizeof(struct sle_adv_common_value);

    struct sle_adv_common_value adv_access_mode;
    adv_access_mode.length = sizeof(struct sle_adv_common_value) - 1;
    adv_access_mode.type = SLE_ADV_DATA_TYPE_ACCESS_MODE;
    adv_access_mode.value = 0;
    if (memcpy_s(&adv_data[idx], SLE_ADV_DATA_LEN_MAX - idx, &adv_access_mode,
        sizeof(struct sle_adv_common_value)) != EOK) {
        return 0;
    }
    idx += sizeof(struct sle_adv_common_value);

    return idx;
}

static uint16_t sle_set_scan_response_data(uint8_t *scan_rsp_data)
{
    uint16_t idx = 0;
    struct sle_adv_common_value tx_power_level;
    tx_power_level.length = sizeof(struct sle_adv_common_value) - 1;
    tx_power_level.type = SLE_ADV_DATA_TYPE_TX_POWER_LEVEL;
    tx_power_level.value = SLE_ADV_TX_POWER;
    if (memcpy_s(scan_rsp_data, SLE_ADV_DATA_LEN_MAX, &tx_power_level,
        sizeof(struct sle_adv_common_value)) != EOK) {
        return 0;
    }
    idx += sizeof(struct sle_adv_common_value);
    idx += sle_set_adv_local_name(&scan_rsp_data[idx], SLE_ADV_DATA_LEN_MAX - idx);
    return idx;
}

static int sle_set_default_announce_param(void)
{
    sle_announce_param_t param = {0};
    uint8_t mac[SLE_ADDR_LEN] = {0x11, 0x22, 0x33, 0x44, 0x55, 0x66};
    param.announce_mode = SLE_ANNOUNCE_MODE_CONNECTABLE_SCANABLE;
    param.announce_handle = SLE_ADV_HANDLE_DEFAULT;
    param.announce_gt_role = SLE_ANNOUNCE_ROLE_T_CAN_NEGO;
    param.announce_level = SLE_ANNOUNCE_LEVEL_NORMAL;
    param.announce_channel_map = SLE_ADV_CHANNEL_MAP_DEFAULT;
    param.announce_interval_min = SLE_ADV_INTERVAL_MIN_DEFAULT;
    param.announce_interval_max = SLE_ADV_INTERVAL_MAX_DEFAULT;
    param.conn_interval_min = SLE_CONN_INTV_MIN_DEFAULT;
    param.conn_interval_max = SLE_CONN_INTV_MAX_DEFAULT;
    param.conn_max_latency = SLE_CONN_MAX_LATENCY;
    param.conn_supervision_timeout = SLE_CONN_SUPERVISION_TIMEOUT_DEFAULT;
    param.announce_tx_power = SLE_ADV_TX_POWER;
    param.own_addr.type = 0;
    memcpy_s(param.own_addr.addr, SLE_ADDR_LEN, mac, SLE_ADDR_LEN);
    return sle_set_announce_param(param.announce_handle, &param);
}

static int sle_set_default_announce_data(void)
{
    uint8_t adv_handle = SLE_ADV_HANDLE_DEFAULT;
    uint8_t announce_data[SLE_ADV_DATA_LEN_MAX] = {0};
    uint8_t seek_rsp_data[SLE_ADV_DATA_LEN_MAX] = {0};
    sle_announce_data_t data = {0};

    uint16_t announce_data_len = sle_set_adv_data(announce_data);
    data.announce_data = announce_data;
    data.announce_data_len = announce_data_len;

    uint16_t seek_data_len = sle_set_scan_response_data(seek_rsp_data);
    data.seek_rsp_data = seek_rsp_data;
    data.seek_rsp_data_len = seek_data_len;

    sle_set_announce_data(adv_handle, &data);
    return ERRCODE_SLE_SUCCESS;
}

void sle_announce_enable_cbk(uint32_t announce_id, errcode_t status)
{
    osal_printk("[id_server] announce enable id:0x%02x, state:0x%02x\r\n", announce_id, status);
}

void sle_announce_disable_cbk(uint32_t announce_id, errcode_t status)
{
    osal_printk("[id_server] announce disable id:0x%02x, state:0x%02x\r\n", announce_id, status);
}

void sle_announce_terminal_cbk(uint32_t announce_id)
{
    osal_printk("[id_server] announce terminal id:0x%02x\r\n", announce_id);
}

void sle_enable_cbk(errcode_t status)
{
    osal_printk("[id_server] sle enable status:0x%02x\r\n", status);
    sle_enable_server_cbk();
}

void sle_announce_register_cbks(void)
{
    sle_announce_seek_callbacks_t seek_cbks = {0};
    seek_cbks.announce_enable_cb = sle_announce_enable_cbk;
    seek_cbks.announce_disable_cb = sle_announce_disable_cbk;
    seek_cbks.announce_terminal_cb = sle_announce_terminal_cbk;
    seek_cbks.sle_enable_cb = sle_enable_cbk;
    sle_announce_seek_register_callbacks(&seek_cbks);
}

errcode_t sle_identity_server_adv_init(void)
{
    sle_set_default_announce_param();
    sle_set_default_announce_data();
    sle_start_announce(SLE_ADV_HANDLE_DEFAULT);
    osal_printk("[id_server] adv init done, broadcasting...\r\n");
    return ERRCODE_SLE_SUCCESS;
}
