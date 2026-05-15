/**
 * Copyright (c) HiSilicon (Shanghai) Technologies Co., Ltd. 2024-2024. All rights reserved.
 *
 * Description: AD8232 Heart Rate Monitor Sample Source. \n
 *
 * History: \n
 * 2024-05-06, Create file. \n
 */
#include <stdio.h>
#include <string.h>
#include "pinctrl.h"
#include "gpio.h"
#include "adc.h"
#include "adc_porting.h"
#include "uart.h"
#include "common_def.h"
#include "soc_osal.h"
#include "app_init.h"

#define AD8232_SAMPLE_INTERVAL_MS      2
#define AD8232_TASK_PRIO               26
#define AD8232_TASK_STACK_SIZE         0x1000
#define AD8232_UART_TX_BUF_LEN         32

static uint8_t g_ad8232_uart_tx_buf[AD8232_UART_TX_BUF_LEN];

static void ad8232_uart_send_str(uart_bus_t bus, const char *str)
{
    size_t len = strlen(str);
    uapi_uart_write(bus, (const uint8_t *)str, len, 0);
}

static void ad8232_uart_send_int(uart_bus_t bus, int32_t value)
{
    int ret = snprintf((char *)g_ad8232_uart_tx_buf, AD8232_UART_TX_BUF_LEN, "%d\r\n", value);
    if (ret > 0 && ret < AD8232_UART_TX_BUF_LEN) {
        uapi_uart_write(bus, g_ad8232_uart_tx_buf, (uint32_t)ret, 0);
    }
}

static void ad8232_uart_init(uart_bus_t bus, pin_t tx_pin, uint32_t baudrate)
{
    uart_pin_config_t pin_config = {
        .tx_pin = tx_pin,
        .rx_pin = PIN_NONE,
        .cts_pin = PIN_NONE,
        .rts_pin = PIN_NONE
    };

    uart_attr_t attr = {
        .baud_rate = baudrate,
        .data_bits = UART_DATA_BIT_8,
        .stop_bits = UART_STOP_BIT_1,
        .parity = UART_PARITY_NONE,
        .flow_ctrl = UART_FLOW_CTRL_NONE
    };

    uart_buffer_config_t buffer_config = {
        .rx_buffer = NULL,
        .rx_buffer_size = 0
    };

    uapi_pin_set_mode(tx_pin, PIN_MODE_1);
    uapi_uart_deinit(bus);
    uapi_uart_init(bus, &pin_config, &attr, NULL, &buffer_config);
}

static void *ad8232_task(const char *arg)
{
    unused(arg);

    pin_t lo_plus_pin = CONFIG_AD8232_LO_PLUS_PIN;
    pin_t lo_minus_pin = CONFIG_AD8232_LO_MINUS_PIN;
    pin_t sdn_pin = CONFIG_AD8232_SDN_PIN;
    uint8_t adc_channel = CONFIG_AD8232_ADC_CHANNEL;
    uart_bus_t ecg_uart_bus = CONFIG_AD8232_UART_BUS;
    pin_t ecg_uart_tx_pin = CONFIG_AD8232_UART_TXD_PIN;
    uint32_t ecg_uart_baudrate = CONFIG_AD8232_UART_BAUDRATE;
    uint16_t ecg_value;
    gpio_level_t lo_plus_level;
    gpio_level_t lo_minus_level;

    uapi_pin_set_mode(lo_plus_pin, HAL_PIO_FUNC_GPIO);
    uapi_pin_set_mode(lo_minus_pin, HAL_PIO_FUNC_GPIO);

    uapi_gpio_set_dir(lo_plus_pin, GPIO_DIRECTION_INPUT);
    uapi_gpio_set_dir(lo_minus_pin, GPIO_DIRECTION_INPUT);

    if (sdn_pin != PIN_NONE) {
        uapi_pin_set_mode(sdn_pin, HAL_PIO_FUNC_GPIO);
        uapi_gpio_set_dir(sdn_pin, GPIO_DIRECTION_OUTPUT);
        uapi_gpio_set_val(sdn_pin, GPIO_LEVEL_LOW);
    }

    uapi_adc_init(ADC_CLOCK_500KHZ);
    ad8232_uart_init(ecg_uart_bus, ecg_uart_tx_pin, ecg_uart_baudrate);

    osal_printk("AD8232 ECG monitor started on UART%d (%d baud).\r\n",
                ecg_uart_bus, ecg_uart_baudrate);

    ad8232_uart_send_str(ecg_uart_bus, "AD8232 ECG start\r\n");

    while (1) {
        lo_plus_level = uapi_gpio_get_val(lo_plus_pin);
        lo_minus_level = uapi_gpio_get_val(lo_minus_pin);

        if (lo_plus_level == GPIO_LEVEL_HIGH || lo_minus_level == GPIO_LEVEL_HIGH) {
            ad8232_uart_send_str(ecg_uart_bus, "!\r\n");
        } else {
            (void)adc_port_read(adc_channel, &ecg_value);
            ad8232_uart_send_int(ecg_uart_bus, ecg_value);
        }

        osal_msleep(AD8232_SAMPLE_INTERVAL_MS);
    }

    return NULL;
}

static void ad8232_entry(void)
{
    osal_task *task_handle = NULL;
    osal_kthread_lock();
    task_handle = osal_kthread_create((osal_kthread_handler)ad8232_task, 0, "Ad8232Task", AD8232_TASK_STACK_SIZE);
    if (task_handle != NULL) {
        osal_kthread_set_priority(task_handle, AD8232_TASK_PRIO);
    }
    osal_kthread_unlock();
}

app_run(ad8232_entry);
