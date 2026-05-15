/*
 * Copyright (c) HiSilicon (Shanghai) Technologies Co., Ltd. 2022. All rights reserved.
 *
 * Description: SLE Identity Server module.
 */

#ifndef SLE_IDENTITY_SERVER_H
#define SLE_IDENTITY_SERVER_H

#include "sle_ssap_server.h"

#define SLE_ID_SERVER_SERVICE_UUID       0x060B
#define SLE_ID_SERVER_NTF_REPORT_UUID    0x1122
#define SLE_ID_PROPERTY_PERMISSIONS      (SSAP_PERMISSION_READ | SSAP_PERMISSION_WRITE)
#define SLE_ID_DESCRIPTOR_PERMISSIONS    (SSAP_PERMISSION_READ | SSAP_PERMISSION_WRITE)

errcode_t sle_uuid_server_send_report_by_handle_id(uint8_t *data, uint16_t len, uint16_t connect_id);
void sle_enable_server_cbk(void);
errcode_t sle_identity_server_init(void);

#endif
