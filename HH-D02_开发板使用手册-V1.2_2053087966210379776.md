# NearLink_DK_WS63E 星闪开发板

# 使用手册 V1.2

![image](https://cdn-mineru.openxlab.org.cn/result/2026-05-09/41b2e134-a4ae-487c-8d03-90a23f0522f1/b191379e4f6dbceaa4dc60b3be62d43d63b018475d414d0dfb40d7e0ec550608.jpg)



更改记录


<table><tr><td>版本</td><td>日期</td><td>作者</td><td>审核者</td><td>备注</td></tr><tr><td>V1.0</td><td>2024-7-2</td><td>赵鹏飞</td><td></td><td></td></tr><tr><td>V1.1</td><td>2024-8-6</td><td>陈思维</td><td>赵鹏飞</td><td>添加BLE AT指令示例</td></tr><tr><td>V1.2</td><td>2024-9-2</td><td>赵鹏飞</td><td></td><td>修改USER按键由“GPIO5”改为“GPIO13”</td></tr><tr><td></td><td></td><td></td><td></td><td></td></tr></table>

版权声明：

本文档著作权由 HiHope 所有，保留一切权利。未经书面许可，任何单位和个人不得擅自摘抄、

复制本文档内容的部分或全部，并不得以任何形式传播。

本文档中的信息将随着 HiHope 产品和技术的进步不断更新，恕不再通知此类信息的更新。

# 目录

1 概述……5

2 硬件说明 …… 6

2.1 功能布局 …… 6

2.2 功能框图 …… 7

3 烧录指导……7

4 指令说明 …… 9

4.1 命令简介....9

4.2 指令类型 …… 10

4.3 注意事项 …… 10

5 指令说明 …… 11

5.1 通用 AT 指令 …… 11

5.2 STA 相关 AT 指令 23

5.3 SoftAP 相关 AT 指令 36

5.4 Repeater 相关 AT 指令 41

5.5 TCP/IP 相关 AT 指令 42

5.6 测试调试相关 AT 指令……46

5.7 使用场景示例 …… 50

6 指令说明 …… 55

6.1 BLE 55 

6.2 SLE 83 

7 指令说明 …… 111

7.1 设置雷达状态……111

7.2 查询雷达状态 …… 111

7.3 设置雷达退出延时 …… 112

7.4 查询雷达退出延时 …… 112

7.5 查询雷达天线隔离度信息……113

8 开发板操作示例 …… 114

8.1 硬件配置 …… 114

8.2 软件配置 …… 114

8.3 sle连接并发送数据操作示例 …… 114

8.4 ble连接并发送数据操作示例 118

# 1 概述

型号: NearLink_DK_WS63E

![image](https://cdn-mineru.openxlab.org.cn/result/2026-05-09/41b2e134-a4ae-487c-8d03-90a23f0522f1/d1fd6e3f8ade2220e8882e4d299e26d4143bfd10e907b29fbd9bd5a463e5e63c.jpg)



图 1-1 NearLink_DK_WS63E 星闪开发板


NearLink_DK_WS63E采用海思星闪WS63E的解决方案，具备对802.11b/g/n/ax无线通信协议的支持，同时兼容BLE5.3协议，具备BLE Mesh和BLE网关能力；支持SLE1.0协议及SLE网关功能；具备雷达人体活动检测能力；可基于OpenHarmony轻量系统开发物联网场景功能，是物联网智能终端领域的理想选择。

# 主要支持功能如下：

- 支持支持 Wi-Fi、BLE 或 SLE 三种组网方式，BLE Mesh 组网

- 支持雷达感知功能

- 支持USB 5V供电，以及USB转UART用于下载升级固件和主机通信。

- 支持 power-on 复位按键，支持用户自定义按键

- 支持板载 PCB 天线或 IPEX 座子外置天线。

- 支持19个 GPIO，可复用为 PWM、ADC 采集通道、SPI 接口、QSPI接口、I2C接口、I2S 接口、UART 接口。

# 2 硬件说明

# 2.1 功能布局

![image](https://cdn-mineru.openxlab.org.cn/result/2026-05-09/41b2e134-a4ae-487c-8d03-90a23f0522f1/2ef4b5995e2cec51426bc02643292142ecbd9424508f8e2cc82d2a1293edb6db.jpg)



图 2-1 NearLink_DK_WS63E 星闪开发板功能



表 2-1 NearLink_DK_WS63E 星闪开发板功能


<table><tr><td>序号</td><td>模块</td><td>功能</td><td>备注说明</td></tr><tr><td>1</td><td>用户按键</td><td>自定义按键</td><td>开关S2 通过 GPIO13 引脚向 WS63E 上报“按下/释放”状态。功能由软件定制</td></tr><tr><td>2</td><td>Type-C 接口</td><td>供电、烧录和串口通讯</td><td>可对主板及整个套件进行供电,或连接至电脑进行串口调试、系统烧录</td></tr><tr><td>3</td><td>复位按键</td><td>复位按键</td><td>可以对主板进行复位</td></tr><tr><td>4</td><td>电源指示灯</td><td>电源指示</td><td>正常上电后红色电源指示灯亮</td></tr><tr><td>5</td><td>三色指示灯</td><td>状态指示</td><td>通过相关的IO口PWM控制</td></tr><tr><td>6</td><td>稳压器AMS1117</td><td>模组供电</td><td>串口5V供电转换为芯片的3.3V供电</td></tr><tr><td>7</td><td>CH340K USB 转串口芯片</td><td>USB-UART转换</td><td>使用串口功能时,需要在 PC 上安装该芯片的驱动程序。</td></tr><tr><td>8</td><td>HH-SPARK_WS63E 模组</td><td>星闪模组</td><td>高度集成2.4G Soc Wi-Fi 6、BLE 和 SLE,具有高速传输、低延迟、高性能、低功耗的特点,Type-C 型 USB 接口及丰富的管脚功能。</td></tr><tr><td>9</td><td>SLE板载天线</td><td>信号增强</td><td>用于增强SLE/BLE/Wifi的信号</td></tr><tr><td>10</td><td>SLE 外接天线(可选)</td><td>信号增强</td><td>用于增强SLE/BLE/Wifi的信号,使用1代IPEX接口,特殊场景下需要很强的信号可以使用,通过更换焊接电阻实现。</td></tr><tr><td>11</td><td>雷达外接天线</td><td>信号增强</td><td>用于增强雷达信号,使用1代IPEX接口</td></tr><tr><td>12</td><td>GPIO管脚</td><td>GPIO管脚</td><td>将HH-SPARK_WS63E 模组所有GPIO管脚引出到开发板两边 2.54mm 排针上</td></tr></table>

# 2.2 功能框图

![image](https://cdn-mineru.openxlab.org.cn/result/2026-05-09/41b2e134-a4ae-487c-8d03-90a23f0522f1/8931d0a484558b71d7b5489796d1e90e7d314ca5643320913dbc2184aeda6f2a.jpg)



图 2-2 NearLink_DK_WS63E 星闪开发板功能框图


# 3 烧录指导

# 1) 硬件连接

PC端下载安装ch340串口驱动，并通过USB转Type-C数据线将开发板连接到PC上，此时电源指示灯亮起红灯

![image](https://cdn-mineru.openxlab.org.cn/result/2026-05-09/41b2e134-a4ae-487c-8d03-90a23f0522f1/995a2fcf392a4c320c898dfc95de379801d554ab29dbb54cf0985efb3c924bf5.jpg)



图 3-1 硬件连接


# 2) 串口查看

右击我的电脑，点开管理，打开“设备管理器->端口”，出现如图4-1所示新

增端口（COM17）。

![image](https://cdn-mineru.openxlab.org.cn/result/2026-05-09/41b2e134-a4ae-487c-8d03-90a23f0522f1/9044eb462b9cf92ed8336d9396e2e4054c6ca902a843a1b0758871e847e6da57.jpg)



图 3-2 获取串口


# 3) 开始烧录

打开烧录工具，点开Option选项，选择对应的芯片，WS63E与WS63属于同一款系列，芯片选择WS63即可。

![image](https://cdn-mineru.openxlab.org.cn/result/2026-05-09/41b2e134-a4ae-487c-8d03-90a23f0522f1/1416b1f7813eb8ddfcd0b2267a7fd7f0eb8503b5aacf74949bbe3cc02e92669d.jpg)



图 3-3 设置


选择对应的串口（COM17），以及烧录的固件，勾选Auto burn和Auto disconnect，点击connect开始烧录，烧录完成会有“AI• images burn successfully”的提示。

![image](https://cdn-mineru.openxlab.org.cn/result/2026-05-09/41b2e134-a4ae-487c-8d03-90a23f0522f1/a6296eb4db2dbbdbc6b136c59f90539f197974132ea45f4be556c6d70dae22a2.jpg)



图 3-4 烧录


# 4) 串口打印

通过串口工具连接，波特率选择115200，上电后可以看到相关的串口打印。

![image](https://cdn-mineru.openxlab.org.cn/result/2026-05-09/41b2e134-a4ae-487c-8d03-90a23f0522f1/70c2b4bdb7b9a6e1b4e8d6ae49606f87132d85e22c993ec384912b92fdb76bbb.jpg)



图 3-5 串口打印


# 4 指令说明

# 4.1 命令简介

AT 命令用于 TE（例如：PC 等用户终端）和 MT（例如：移动台等移动终端）之间控制信息的交互，如图 4-1 所示。


图4-1AT 命令示意图


![image](https://cdn-mineru.openxlab.org.cn/result/2026-05-09/41b2e134-a4ae-487c-8d03-90a23f0522f1/a64a9a7350b897fe7c11916045fb3ba4755c9c22845c4337bc40a76b517a8226.jpg)


# 4.2 指令类型

AT 指令类型如表 4-1 所示。


表4-1AT 指令类型说明


<table><tr><td>类型</td><td>格式</td><td>用途</td></tr><tr><td>测试指令</td><td>AT+=?</td><td>该命令用于查询设置指令的参数以及取值范围。</td></tr><tr><td>查询指令</td><td>AT+?</td><td>该命令用于返回参数的当前值。</td></tr><tr><td>设置指令</td><td>AT+=, ...</td><td>设置参数值或执行。</td></tr><tr><td>执行指令</td><td>AT+</td><td>用于执行本指令的功能。</td></tr></table>

# 4.3 注意事项

不是每一条指令都具备表 1-1 中的 4 种类型的命令。

如果存在当前软件版本不支持的 AT 指令，会返回 ERROR。

双引号表示字符串数据 "string"，例如：AT+SCANSSID="XXX"。

串口通信默认：波特率为 115200、8 个数据位、1 个停止位、无校验，无流量控制。

<>为必选参数；[]内为可选值，参数可选。

命令中的参数以“，”作为分隔符，除双引号括起来的字符串参数外，不支持参数本身带“，”。

AT 指令中的参数不能有多余的空格。

AT 指令必须大写，且必须以回车换行符作为结尾（CR LF）

# 5 指令说明

# 5.1 通用 AT 指令

# 5.1.1 通用 AT 指令一览表

<table><tr><td>指令</td><td>描述</td></tr><tr><td>AT+HELP</td><td>查看当前可用 AT 命令。</td></tr><tr><td>AT+MAC</td><td>MAC 地址管理。</td></tr><tr><td>AT+IPERF</td><td>性能测试。</td></tr><tr><td>AT+SYSINFO</td><td>查看系统信息。</td></tr><tr><td>AT+PING</td><td>测试 IPV4 网络连接。</td></tr><tr><td>AT+PING6</td><td>测试 IPV6 网络连接。</td></tr><tr><td>AT+DNS</td><td>设置单板 dns 服务器地址。</td></tr><tr><td>AT+NETSTAT</td><td>查看网络状态。</td></tr><tr><td>AT+DHCP</td><td>dhcp 客户端命令。</td></tr><tr><td>AT+DHCPS</td><td>dhcps 服务器端命令。</td></tr><tr><td>AT+IFCFG</td><td>接口配置。</td></tr><tr><td>AT+PS</td><td>Wi-Fi 低功耗设置。</td></tr><tr><td>AT+RST</td><td>复位单板。</td></tr></table>

# 5.1.2 通用 AT 指令描述

# 5.1.2.1 AT+HELP 查看当前可用 AT 命令

<table><tr><td>格式</td><td>AT+HELP</td></tr><tr><td>响应</td><td>+HELP:显示当前支持的 AT 命令 OK</td></tr><tr><td>参数说明</td><td>-</td></tr><tr><td>示例</td><td>AT+HELP</td></tr><tr><td>注意</td><td>包含 Wi-Fi、BLE、GLE 命令。</td></tr></table>

# 5.1.2.2 AT+MAC MAC 地址管理

<table><tr><td>格式</td><td>设置命令:AT+MAC=</td><td>查询命令: AT+MAC?</td></tr><tr><td>响应</td><td>● 成功: OK● 失败: ERROR</td><td>+MAC:● 成功: OK● 失败: ERROR</td></tr><tr><td>参数说明</td><td>: MAC 地址</td><td>-</td></tr><tr><td>示例</td><td>AT+MAC=90:2B:D2:E4:CE:28</td><td>AT+MAC?</td></tr><tr><td>注意</td><td>设置命令在AT+STARTSTA/AT+STARTAP前下发有效。该 mac 地 址重启之后丢失, 设置的地址为 sta mac地址, softAP mac 地址会 在此地址的基础上将倒数第二个字节加 2派生。</td><td></td></tr></table>

# 5.1.2.3 AT+IPERF 性能测试

<table><tr><td>格式</td><td>AT+IPERF=&lt; -x&gt;</td></tr><tr><td>响应</td><td>+IPERF:&lt;Interval&gt;&lt;Bandwidth&gt;●成功:OK●失败:ERROR</td></tr><tr><td>参数说明</td><td>●&lt;-x&gt;:参数类型-s:以server模式启动-c,IP:以client模式启动,IP为server端地址-u:使用udp协议-i,sec:以秒为单位显示报告间隔-t,sec:测试时间,默认30s-b,Bandwidth:udp发送带宽,单位为bps,如设置为10K、20M,默认值为1Mbps-l,length:单次发送数据长度,单位为字节-B,IP:绑定一个主机IP地址,当主机有多个地址或接口时使用该参数-S,value:指定tos,value不同取值范围分别对应tid0~tid7,value取值与tid对应关系如下:0~31:tid032~63:tid164~95:tid296~127:tid3128~159: tid4160~191: tid5192~223: tid6224~255: tid7-p,portNum: 指定服务器端使用的端口或客户端所连接的端口 -k: 停止 iperf 服务统计时间间隔,单位为 s。测试吞吐量,显示统计间隔内的平均吞吐量。</td></tr><tr><td>示例</td><td>AT+IPERF=-s,-i,1: 以 server 模式启动 iperf,使用协议默认为 tcp,显示报告以 1s 为间隔。AT+IPERF=-s,-u,-i,1: 以 server 模式启动 iperf,使用协议 udp,显示报告以 1s 为间隔。AT+IPERF=-c,192.168.3.1,-t,5,-i,1: 以 client 模式启动 iperf,使用协议默认为 tcp,测试 5s,显示报告以 1s 为间隔。AT+IPERF=-c,192.168.3.1,-u,-b,10M,-t,5,-i,1: 以 client 模式启动 iperf,使用协议 udp,发送带宽为 10Mbps,测试 5s,显示报告以 1s 为间隔。AT+IPERF=-c,192.168.3.1,-u,-b,10M,-t,5,-i,1,-l,1000,-B,192.168.3.2,-p,5001,-S,28: 以 client 模式启动 iperf,使用 协议 udp,发送带宽为 10Mbps,测试 5s,显示报告以 1s 为 间隔,单次发送数据包最大为 1000Byte,绑定本次 iperf 命令 的主机 IP 地址为 192.168.3.2,设定使用端口 5001,指定 tos 为 28。AT+IPERF=-k: 手动停止 iperf 性能测试。</td></tr><tr><td>注意</td><td>-c 或者-s须放在第一个参数位置。-s 使用时,须使用-k 结束才能进行下一次启动。-s 使用时,如果打流结束,iperf server 进程会自动关闭,再次测试需要重新起 server仅支持一次执行,不支持多实例同时进行。</td></tr></table>

# 5.1.2.4 AT+SYSINFO 查看系统信息

<table><tr><td>格式</td><td>AT+SYSINFO</td></tr><tr><td>响应</td><td>+SYSINFO:显示 SDK 版本号和系统当前所有任务详细信息,如任务 ID、优先级、栈内存大小、调度状态等。● 成功:OK● 失败:ERROR</td></tr><tr><td>参数说明</td><td>-</td></tr><tr><td>示例</td><td>AT+SYSINFO</td></tr><tr><td>注意</td><td>-</td></tr></table>

# 5.1.2.5 AT+PING 测试 IPV4 网络连接

<table><tr><td>格式</td><td>AT+PING=[&lt;-x&gt;,]</td></tr><tr><td>响应</td><td>[&lt;index&gt;]Reply from: time=TTL=&lt;Tx_count&gt; packets transmitted,received,loss成功: OK失败: ERROR</td></tr><tr><td>参数说明</td><td>&lt; -x&gt;: 参数类型。-n,count: 发送 count 指定的数据包数,默认值为4 -t: Ping 指定的主机,直到 AT+PING=-k 停止-w,interval: 相邻两次 ping 包的时间间隔,参数范围 1~INT_MAX,单位为毫秒-W,timeout: ping 超时时间设置,参数范围 1000~10000,单位为毫秒-l,size: 单次发送数据长度,参数范围 0~65344,单位为字节,默认 48 字节-k: 停止 ping 包,-k 后不带参数:目的主机 IP 地址。:ping 包序号。:ping 包耗时。:生存时间 TTL。:发包数。:收包数。:丢包数。</td></tr><tr><td>示例</td><td>AT+PING= 192.168.3.1: 执行 ping 192.168.3.1,默认 ping 4 个包。AT+PING=-n,6,192.168.3.1:执行 ping 192.168.3.1,ping 6 个包。AT+PING=-w,1,192.168.3.1:执行 ping 192.168.3.1,相邻两次 ping 包的时间间隔为 1ms。AT+PING=-l,100,192.168.3.1:执行 ping 192.168.3.1,设置单次发送包长最大为 100Byte。AT+PING=-t,192.168.3.1:执行 ping 192.168.3.1,直到输入 ping 的-k 命令停止。AT+PING=-k:停止 ping 包。</td></tr><tr><td>注意</td><td>-</td></tr></table>

# 5.1.2.6 AT+PING6 测试 IPV6 网络连接

<table><tr><td>格式</td><td>AT+PING6=[&lt;-x&gt;,]&lt;IP&gt;</td></tr><tr><td>响应</td><td>• [&lt;index&gt;]Reply from &lt;IP&gt;: time=&lt;time&gt;•packets transmitted,received,&lt;loss_count&gt; loss•成功: OK•失败: ERROR</td></tr><tr><td>参数说明</td><td>•&lt;-x&gt;: 参数类型-c,count:执行 count 值对应次数,默认为 4 次 -t: Ping 指定的主机,直到 AT+PING6=-k 停止 -k:停止 ping 包,-k 后不带-1 和 IP 参数•&lt;IP&gt;: 目的主机 IPV6 地址•:发包序列号•:单次 ping 包耗时时长•:总发包数•:总收包数•:丢包数</td></tr><tr><td>示例</td><td>• AT+PING6=2001:a:b:c:d:e:f:b• AT+PING6=-c,100,2001:a:b:c:d:e:f:b• AT+PING6=-k</td></tr><tr><td>注意</td><td>-</td></tr></table>

# 5.1.2.7 AT+DNS 设置单板 dns 服务器地址

<table><tr><td>格式</td><td>设置命令:AT+DNS=,</td><td>查询命令:AT+DNS?</td></tr><tr><td>响应</td><td>成功:OK失败:ERROR</td><td>+DNS:&lt;Dns1_IP&gt;&lt;Dns2_IP&gt;成功:OK失败:ERROR</td></tr><tr><td>参数说明</td><td colspan="2">·&lt;dns_num&gt;:选择设置第一个还是第二个DNS服务器。1:第一个DNS服务器。2:第二个DNS服务器。·&lt;IP&gt;:服务器IP地址。·:DNS1的IP地址。·:DNS2(IP):DNS2的IP地址。</td></tr><tr><td>示例</td><td colspan="2">·AT+DNS?·AT+DNS=1,192.168.3.1·AT+DNS=2,192.168.3.2</td></tr><tr><td>注意</td><td colspan="2">-</td></tr></table>

# 5.1.2.8 AT+NETSTAT 查看网络状态

<table><tr><td>格式</td><td>AT+NETSTAT</td></tr><tr><td>响应</td><td>Proto Recv-Q Send-Q Local AddressForeign Address State成功: OK失败: ERROR</td></tr><tr><td>参数说明</td><td>Proto: 协议类型。tcp udpResv-Q: 未被用户读取的数据量。Send-Q: 对 TCP 连接,已发送但未确认的数据量;对 UDP 连接,由于 IP 地址解析未完成而缓存的数据量。Loca·Address: 本地地址和端口。Foreign Address: 远程地址和端口。State: TCP 连接状态;UDP 不包含此项。TCP 连接态描述如下:CLOSED,即没有任何连接状态。LISTEN,即侦听来自远方的 TCP 端口的连接请求。SYN_SENT,即在发送连接请求后等待匹配的连接请求。SYN_RCVD,即在收到和发送一个连接请求后等待对方对连接请求的确认。ESTABLISHED,即代表一个打开的连接。FIN_WAIT_1,即等待远程 TCP 连接中断请求,或先前的连接中断请求的确认。FIN_WAIT_2,即从远程 TCP 等待连接中断请求。CLOSE_WAIT,即等待从本地用户发来的连接中断请求。CLOSING,即等待远程 TCP 对连接中断的确认。LAST_ACK,即等待原来的发向远程 TCP 的连接中断请求的确认。TIME_WAIT,即等待足够的时间以确保远程 TCP 接收到连接中断请求的确认。</td></tr><tr><td>示例</td><td>AT+NETSTAT</td></tr><tr><td>注意</td><td>-</td></tr></table>

# 5.1.2.9 AT+DHCP dhcp 客户端命令

<table><tr><td>格式</td><td>AT+ DHCP=,,</td></tr><tr><td>响应</td><td>●成功:OK●失败:ERROR</td></tr><tr><td>参数说明</td><td>●:网卡名称。●:DHCP开关。0:停止1:启动</td></tr><tr><td>示例</td><td>AT+ DHCP=wlan0,1</td></tr><tr><td>注意</td><td>网卡名称与 AT+IFCFG 查看的 STA 网卡名称保持一致。</td></tr></table>

# 5.1.2.10 AT+DHCPS dhcps 服务器端命令

<table><tr><td>格式</td><td>AT+DHCPS=,,</td></tr><tr><td>响应</td><td>●成功:OK●失败:ERROR</td></tr><tr><td>参数说明</td><td>●:网卡名称。●:DHCPS开关。0:停止1:启动</td></tr><tr><td>示例</td><td>AT+DHCPS=ap0,1</td></tr><tr><td>注意</td><td>网卡名称与 AT+IFCFG 查看的 AP 网卡名称保持一致。</td></tr></table>

# 5.1.2.11 AT+IFCFG 接口配置

<table><tr><td>格式</td><td>设置指令:AT+IFCFG=,,netmask,gateway,[,]</td><td>查询指令: AT+IFCFG</td></tr><tr><td>响应</td><td>成功: OK失败: ERROR</td><td>+IFCFG:,ip= , netmask= , gateway= , ip6= , HWaddr= , MTU= , RunStatus=成功: OK失败: ERROR</td></tr><tr><td>参数说明</td><td colspan="2">• : 网卡名称。• : IP 地址。• : 子网掩码。• : 网关地址。• : 网卡开关。 up: 启用网卡;down: 停用网卡。• : IPV6 地址。• : 硬件地址。• : 数据帧最大长度。• : 网卡是否正在运行。 0: 网卡没有运行;1: 网卡正在运行。</td></tr><tr><td>示例</td><td colspan="2">• AT+IFCFG=ap0,192.168.3.1,netmask,255.255.255.0 ,gateway,192.168.3.1:配置网卡 ap0 的 IP、子网掩码、网关。• AT+IFCFG=ap0,up:启动网卡 ap0。• AT+IFCFG=ap0,down:停用网卡 ap0。• AT+IFCFG:查询网卡各类配置信息。</td></tr><tr><td>注意</td><td colspan="2">• 启动 STA/SOFTAP 后,方可查询到有效。。• 配置 IP 地址时,需将紧跟之后。• 启用/关闭网卡时,需将紧跟之后。• 启用/关闭网卡和网卡的 IP/netmask/gateway配置,不能在同一条命令中配置。</td></tr></table>

# 5.1.2.12 AT+PS Wi-Fi 低功耗设置

<table><tr><td>格式</td><td>AT+PS=</td></tr><tr><td>响应</td><td>●成功:OK●失败:ERROR</td></tr><tr><td>参数说明</td><td>●:低功耗模式使能开关。0:关闭低功耗;1:使能 FAST-PS 低功耗模式;2:使能 PS-POL●低功耗模式;3:关闭 PS-POL●模式,使能 FAST-PS 低功耗模式;255:永久关闭低功耗设置(仅认证使用,重启后恢复)。</td></tr><tr><td>示例</td><td>AT+PS=0</td></tr><tr><td>注意</td><td>低功耗命令,需要在Wi-Fi关联并获取IP之后下发,否则有可能不生效。</td></tr></table>

# 5.1.2.13 AT+RST 复位单板

<table><tr><td>格式</td><td>执行命令:AT+RST</td></tr><tr><td>响应</td><td>●成功:OK●失败:ERROR</td></tr><tr><td>参数说明</td><td>-</td></tr><tr><td>示例</td><td>AT+RST</td></tr><tr><td>注意</td><td>软重启</td></tr></table>

# 5.2 STA 相关 AT 指令

# 5.2.1 STA 相关 AT 指令一览表

<table><tr><td>指令</td><td>描述</td></tr><tr><td>AT+STARTSTA</td><td>启动 STA。</td></tr><tr><td>AT+STOPSTA</td><td>关闭 STA。</td></tr><tr><td>AT+RECONN</td><td>配置重连策略。</td></tr><tr><td>AT+SCAN</td><td>发起 STA 扫描。</td></tr><tr><td>AT+SCANCHN</td><td>指定信道扫描。</td></tr><tr><td>AT+SCANSSID</td><td>指定 ssid 扫描。</td></tr><tr><td>AT+SCANRESULT</td><td>查看 STA 扫描结果。</td></tr><tr><td>AT+CONN</td><td>发起与 AP 的连接。</td></tr><tr><td>AT+FCONN</td><td>发起与 AP 的快速连接。</td></tr><tr><td>AT+DISCONN</td><td>断开与 AP 的连接。</td></tr><tr><td>AT+STASTAT</td><td>查看 STA 状态。</td></tr><tr><td>AT+PBC</td><td>wps pbc 连接。</td></tr><tr><td>AT+PIN</td><td>wps_pin 连接。</td></tr><tr><td>AT+PINSHOW</td><td>显示生成的 pin 码。</td></tr></table>

# 5.2.2 STA 相关 AT 指令描述

# 5.2.2.1 AT+STARTSTA 启动 STA

<table><tr><td>格式</td><td>带参数执行指令:AT+STARTSTA=[],[]</td><td>不带参数执行指令:AT+STARTSTA</td></tr><tr><td>响应</td><td>●成功:OK●失败:ERROR</td><td>●成功:OK●失败:ERROR</td></tr><tr><td>参数说明</td><td>:协议类型,默认为40:未配置;1:802.11b;2:802.11b+802.11g;3:802.11b+802.11g+802.11n;4:802.11b+802.11g+802.11n+802.11ax。:管理帧保护策略,默认为1。0:不保护;1:自适应;2:强制保护。</td><td>-</td></tr><tr><td>示例</td><td>AT+STARTSTAAT+STARTSTA=1,1</td><td>AT+STARTSTA</td></tr><tr><td>注意</td><td colspan="2">·不带参数指令执行时,上述参数使用系统默认值。·不支持重复启动STA。</td></tr></table>

# 5.2.2.2 AT+STOPSTA 关闭 STA

<table><tr><td>格式</td><td>AT+STOPSTA</td></tr><tr><td>响应</td><td>● 成功:OK● 失败:ERROR</td></tr><tr><td>参数说明</td><td>-</td></tr><tr><td>示例</td><td>AT+STOPSTA</td></tr><tr><td>注意</td><td>执行 AT+STOPSTA 后,无需先执行&quot;AT+DHCP=wlan0,0&quot;关闭 DHCP 服务,会自动关闭 DHCP 服务。</td></tr></table>

# 5.2.2.3 AT+RECONN 配置重连策略

<table><tr><td>格式</td><td>AT+RECONN=[,,[,]</td></tr><tr><td>响应</td><td>●成功:OK●失败:ERROR</td></tr><tr><td>参数说明</td><td>●:重连使能。0:不执行重连;1:执行重连。●:重连间隔周期,单位为s,取值范围:1~65535。●:重连最大次数,取值范围:1~65535。●:单次重连超时时间,取值范围:2~65535,默认2,当取值为65535时,表示无限次循环重连。</td></tr><tr><td>示例</td><td>AT+RECONN=1,10,3600,50AT+RECONN=1,10,3600,AT+RECONN=0</td></tr><tr><td>注意</td><td>●当重连使能位为0(关闭使能)时,不用再输入后面的参数,否则会响应ERROR。●当重连使能位为1(开启使能)时,需要输入后面的参数,参数个数必须3个,或者4个。●命令在AT+STARTSTA之后才能使用,执行AT+STOPSTA关闭STA以后,本命令配置的参数会恢复成默认值。</td></tr></table>

# 5.2.2.4 AT+SCAN 启动 STA 扫描

<table><tr><td>格式</td><td>AT+SCAN</td></tr><tr><td>响应</td><td>● 成功:OK● 失败:ERROR</td></tr><tr><td>参数说明</td><td>-</td></tr><tr><td>示例</td><td>AT+SCAN</td></tr><tr><td>注意</td><td>● 此命令为非阻塞式命令。● 命令返回 OK 表示启动扫描成功,执行 “AT+SCANRESULT” 查看扫描结果。</td></tr></table>

# 5.2.2.5 AT+SCANCHN 指定信道扫描

<table><tr><td>格式</td><td>AT+SCANCHN=</td></tr><tr><td>响应</td><td>• 成功:OK• 失败:ERROR</td></tr><tr><td>参数说明</td><td>:信道号,取值范围 1~14,只支持单信道扫描。</td></tr><tr><td>示例</td><td>AT+SCANCHN=3</td></tr><tr><td>注意</td><td>• 此命令为非阻塞式命令。• 命令返回 OK 表示启动扫描成功。•不同区域取值范围有差异,中国为 1~13。</td></tr></table>

# 5.2.2.6 AT+SCANSSID 指定 ssid 扫描

<table><tr><td>格式</td><td>AT+SCANSSID=</td></tr><tr><td>响应</td><td>●成功:OK●失败:ERROR</td></tr><tr><td>参数说明</td><td>&lt;ssid&gt;:服务集标识符,即路由器名称,参数需使用双引号。</td></tr><tr><td>示例</td><td>AT+SCANSSID="XXX"AT+SCANSSID=P"\xe4\xb8\xad\xe5\x9b\xbd":指定ssid为“中国”并启动扫描</td></tr><tr><td>注意</td><td>●此命令为非阻塞式命令。●命令返回OK表示启动扫描成功。●如果为非ASCI●编码的字符(例如:名称为“中国”的ssid),按照如下格式输入“中国”的编码:P"\xe4\xb8\xad\xe5\x9b\xbd"。●内容包含特殊符号“或者,需使用\转义,如ssid名称为"ab,c",命令参数应为"ab,c"。</td></tr></table>

# 5.2.2.7 AT+SCANRESULT 查看 STA 扫描结果

<table><tr><td>格式</td><td>AT+SCANRESULT</td></tr><tr><td>响应</td><td>+SCANRESULT:,,,,,,成功: OK失败: ERROR</td></tr><tr><td>参数说明</td><td>:服务集标识符,即路由器名称:基本服务集标识符,通常为路由器MAC地址:信道号,取值范围1~14:信号强度:认证方式。</td></tr><tr><td></td><td>-1:无效安全类型0:OPEN1:WEP2:WPA2_PSK3:WPA_WPA2_PSK4:WPA_PSK5:WPA6:WPA27:SAE8:WPA3_WPA2_PSK_MIX9:WPA3-Enterprise10:OWE11:WAPI-PSK12:WAPI-CERT13:WPA3/WPA2-EnterpriseMIX 14:未知类型</td></tr><tr><td>示例</td><td>AT+SCANRESULT</td></tr><tr><td>注意</td><td>●&lt;chn&gt;:不同区域取值范围有差异,中国为1~13。●执行扫描命令成功后才能查询到扫描结果。●如果为非ASCI●编码的字符,则按照原编码显示。例如:名称为“中国”的ssid,显示格式为:P"\xe4\xb8\xad\xe5\x9b\xbd"。●会遵循隐私要求,例如:2c:00:73:7e:**:**</td></tr></table>

# 5.2.2.8 AT+CONN 发起与 AP 的连接

<table><tr><td>格式</td><td>AT+CONN=[,,] [,]</td></tr><tr><td>响应</td><td>● 成功:OK● 失败:ERROR</td></tr></table>

<table><tr><td>参数说明</td><td>●:服务集标识符,即路由器名称,参数需使用双引号。●:基本服务集标识符,通常为路由器MAC地址。●:密码,需使用双引号。●:密码类型,0表示ASCII格式,1表示HEX格式,默认值为0。</td></tr><tr><td>示例</td><td>●AT+CONN="XXX":连接名称为XXX,且加密方式为open的路由器。●AT+CONN="XXX","123456789":连接名称为XXX,且加密方式非open的路由器。●AT+CONN=,90:2B:D2:E4:CE:28,"123456789":连接bssid为90:2B:D2:E4:CE:28的路由器。●AT+CONN=P"\xe4\xb8\xad\xe5\x9b\xbd","123456789":连接名称为“中国”的路由器。●AT+CONN="XXX","3132333435",1:路由器设置认证方式为WEP,且密码为HEX格式,需要将psk_type置为1。</td></tr><tr><td>注意</td><td>与不能同时为空。与都不为空时,如果与不匹配,则连接失败。如果为非 ASCII 编码的字符(例如:名称为“中国”的 ssid),按照如下格式输入“中国”的编码:P"\xe4\xb8\xad\xe5\x9b\xbd"。和内容如果包含特殊符号“或者,需使用\转义,如 ssid 名称为"ab,c",命令参数应为"ab\c"。如果密码为 HEX 类型,需要将 psk_type 置为 1。此命令为非阻塞式命令。STAUT 关联 WPA、WPA2 以及 WPA-WPA2 混合加密时,设置 psk_type=0,passwd 不能大于等于 64 位</td></tr></table>

<table><tr><td></td><td>• STAUT 关联 WEP 加密时,设置 psk_type=0, passwd 不能为 10/26 位,或者设置 psk_type=1, passwd 不能为 5/13 位• STAUT 关联 WAPI 加密时,设置 psk_type=1, passwd 应大于等于 8 位且小于等于 32 位;设置 psk_type=0 时,passwd 应大于等于 8 位且小于等于 64 位• 命令返回 OK 表示连接命令下发成功,连接结果通过 +NOTICE 上报,+NOTICE 信息如下:+NOTICE:CONNECTED,表示连接成功;+NOTICE:DISCONNECTED,表示连接失败。</td></tr></table>

# 5.2.2.9 AT+FCONN 发起与 AP 的快速连接

<table><tr><td>格式</td><td>AT+FCONN=,,,[,]</td></tr><tr><td>响应</td><td>成功:OK失败:ERROR</td></tr><tr><td>参数说明</td><td>:服务集标识符,即路由器名称,参数需使用双引号。:基本服务集标识符,通常为路由器MAC地址。:信道号,取值范围1~14。:认证方式。0:OPEN1:WEP2:WPA2_PSK3:WPA_WPA2_PSK7:WPA3-SAE8:WPA2_PSK_WPA3-SAE11:WAPI-PSK:密码,需使用双引号,如果对端网络认</td></tr></table>

<table><tr><td></td><td>证方式为 WEP,并且密码为 ASCII 格式,此处密码 输入需要双层双引号。</td></tr><tr><td>示例</td><td>• AT+FCONN="XXX",6,3,"123456789":连接名称为XXX的路由器,指定6信道。• AT+FCONN=P"\xe4\xb8\xad\xe5\x9b\xbd",6,3,"123456789":连接名称为“中国”的路由器,指定6信道。• AT+FCONN=,90:2B:D2:E4:CE:28,6,3,"123456789":连接bssid为90:2B:D2:E4:CE:28的路由器,指定6信道。• AT+FCONN="XXX",6,1,"1234567890123":连接名称为XXX的路由器,对端路由器设置的认证方式为WEP,密码为ASCII格式,此处使用双层双引号。</td></tr><tr><td>注意</td><td>•与不能同时为空。•与都不为空时,如果与不匹配则连接失败。•如果为非ASCI●编码的字符(例如:名称为“中国”的ssid),按照如下格式输入“中国”的编码:P"\xe4\xb8\xad\xe5\x9b\xbd"。•和内容如果包含特殊符号“或者,需使用\转义,如ssid名称为"ab,c",命令参数应为"ab\c"。•设置为OPEN时,无需参数及参数前的逗号。•不同区域取值范围有差异,中国为1~13。•此命令为阻塞式命令,先返回连接结果再返回OK或ERROR。•连接结果通过+NOTICE上报,+NOTICE信息如下:+NOTICE:CONNECTED,表示连接成功;+NOTICE:DISCONNECTED,表示连接失败。</td></tr></table>

# 5.2.2.10 AT+DISCONN 断开与 AP 的连接

<table><tr><td>格式</td><td>AT+DISCONN</td></tr><tr><td>响应</td><td>● 成功:OK● 失败:ERROR</td></tr><tr><td>参数说明</td><td>-</td></tr><tr><td>示例</td><td>AT+DISCONN</td></tr><tr><td>注意</td><td>● 此命令为非阻塞式命令。● 命令返回 OK 表示断开连接命令下发成功。</td></tr></table>

# 5.2.2.11 AT+STASTAT 查看 STA 连接状态

<table><tr><td>格式</td><td>AT+STASTAT</td></tr><tr><td>响应</td><td>+STASTAT:,&lt; bssid &gt;,&lt; rssi&gt;● 成功: OK● 失败: ERROR</td></tr><tr><td>参数说明</td><td>●: 当前连接状态。0: 未连接;1: 已连接。●: 服务集标识符, 即路由器名称。●: 基本服务集标识符, 通常为路由器 MAC 地址。●: 信道号, 取值范围 1 ~ 14。●: 路由器信号强度, 取值范围-100 ~ 0。</td></tr><tr><td>示例</td><td>AT+STASTAT</td></tr><tr><td>注意</td><td>● &lt;chn&gt;不同区域取值范围有差异,中国为 1 ~ 13。● &lt;ssid&gt;如果为非 ASCII● 编码的字符,则按照原编码显示。例如:名称为“中国”的 ssid,显示格式为:P"\xe4\xb8\xad\xe5\x9b\xbd"。</td></tr></table>

# 5.2.2.12 AT+PBC PBC 连接

<table><tr><td>格式</td><td>AT+PBC</td></tr><tr><td>响应</td><td>●成功:OK●失败:ERROR</td></tr><tr><td>参数说明</td><td>-</td></tr><tr><td>示例</td><td>AT+PBC</td></tr><tr><td>注意</td><td>●此命令为非阻塞式命令。●命令返回 OK 表示 PBC 连接命令下发成功,连接结果通过+NOTICE上报,+NOTICE信息如下:+NOTICE:CONNECTED,表示连接成功。</td></tr></table>

# 5.2.2.13 AT+PIN PIN 连接

<table><tr><td>格式</td><td>AT+PIN=</td></tr><tr><td>响应</td><td>● 成功:OK● 失败:ERROR</td></tr><tr><td>参数说明</td><td>:PIN 码</td></tr><tr><td>示例</td><td>AT+PIN=03882368</td></tr><tr><td>注意</td><td>此命令为非阻塞式命令。命令返回 OK 表示 PIN 连接命令下发成功,连接结果 通过+NOTICE 上报,+NOTICE 信息如下:+NOTICE:CONNECTED,表示连接成功。</td></tr></table>

# 5.2.2.14 AT+PINSHOW 生成 PIN 码

<table><tr><td>查询指令</td><td>AT+PINSHOW</td></tr><tr><td>响应</td><td>+PINSHOW: &lt;pin&gt;● 成功: OK</td></tr></table>

<table><tr><td></td><td>● 失败:ERROR</td></tr><tr><td>参数说明</td><td>:PIN码</td></tr><tr><td>示例</td><td>AT+PINSHOW</td></tr><tr><td>注意</td><td>-</td></tr></table>

# 5.3 SoftAP 相关 AT 指令

# 5.3.1 SoftAP 相关 AT 指令一览表

<table><tr><td>指令</td><td>描述</td></tr><tr><td>AT+STARTAP</td><td>普通模式启动 SoftAP。</td></tr><tr><td>AT+SETAPADV</td><td>配置 SoftAP 启动参数。</td></tr><tr><td>AT+STOPAP</td><td>停止 SoftAP。</td></tr><tr><td>AT+SHOWSTA</td><td>AP 显示当前连接的 STA 信息。</td></tr><tr><td>AT+DEAUTHSTA</td><td>AP 断开 STA 连接。</td></tr></table>

# 5.3.2 SoftAP 相关 AT 指令描述

# 5.3.2.1 AT+STARTAP 普通模式启动 SoftAP

<table><tr><td>格式</td><td>AT+STARTAP=,,[,]</td></tr><tr><td>响应</td><td>●成功:OK●失败:ERROR</td></tr><tr><td>参数说明</td><td>●:服务集标识符,即路由器名称,参数需使用双引号。●:信道号,取值范围1~14或者取值0表示不指定信道,使用自动信道选择(ACS)算法,此时会触发一次自动信道扫描。●:认证方式。0:OPEN1:WEP-SHARED2:WPA2_PSK3:WPA_WPA2_PSK7:WPA3-SAE8:WPA2_PSK_WPA3-SAE14:WEP-OPEN●:密码,参数需使用双引号,认证方式为2/3/7/8要求密码长度为8位或以上,1/14密码为固定长度5/10/13/26。</td></tr><tr><td>示例</td><td>AT+STARTAP="XXX",6,2,"123456789" AT+STARTAP="XXX",6,0</td></tr><tr><td>注意</td><td>不同区域取值范围有差异,中国为1~13。设置为OPEN时,无参数及参数前的逗号。设置为WEP-SHARED或WEP-OPEN时,参数长度只能为5/10/13/26。和内容如果包含特殊符号“或者,需使用\转义,如ssid名称为"ab,c",命令参数应为"ab\\,c"。如需进行高级参数配置,请先执行AT+SETAPADV,再启动AP;</td></tr></table>

# 5.3.2.2 AT+SETAPADV 配置 SoftAP 启动参数

<table><tr><td>格式</td><td>AT+SETAPADV=[,[,[,[,[,[,[,[,[,[,[,][,[,]</td></tr><tr><td>响应</td><td>成功:OK失败:ERROR</td></tr><tr><td>参数说明</td><td>:协议类型,默认为41:802.11b</td></tr><tr><td></td><td>2:802.11b+802.11g3:802.11b+802.11g+802.11n4:802.11b+802.11g+802.11n+802.11ax:beacon周期,参数取值范围25~1000,单位为ms,默认为100。传0表示使用默认值。:DTIM周期,参数取值范围1~30,默认为2。传0表示使用默认值:配置组播秘钥更新时间,参数取值范围30~86400,单位为秒,默认86400。传0表示使用默认值。:softap是否隐藏ssid 1:不隐藏;2:隐藏。:short GI开关,默认为0。0:关闭short GI;1:开启short GI。</td></tr><tr><td>示例</td><td>AT+SETAPADV=3,100,2,3600,1,1AT+SETAPADV=,100,2,3600,</td></tr><tr><td>注意</td><td>此命令需在AT+STARTAP前下发。如果不需要改变上述参数默认值,无需下发此命令。AT+STOPAP不会改变上述参数设置值。参数可以省略,省略的参数使用系统默认值。参数的使用依赖于AT+STARTAP命令中的参数,手动配置的值仅当配置为WPA_WPA2_PSK时生效,如果配置成WPA2_PSK,默认为86400。</td></tr></table>

# 5.3.2.3 AT+STOPAP 停止 SoftAP

<table><tr><td>格式</td><td>AT+STOPAP</td></tr><tr><td>响应</td><td>● 成功:OK● 失败:ERROR</td></tr><tr><td>参数说明</td><td>-</td></tr><tr><td>示例</td><td>AT+STOPAP</td></tr><tr><td>注意</td><td>执行 AT+STOPAP 后,无需先执行&quot;AT+DHCPS=AP0,0&quot;关闭 DHCP 服务。</td></tr></table>

# 5.3.2.4 AT+SHOWSTA 显示当前连接的 STA 信息

<table><tr><td>格式</td><td>AT+SHOWSTA</td></tr><tr><td>响应</td><td>+SHOWSTA:, mcs:, protocol:, rssi:●成功: OK●失败: ERROR</td></tr><tr><td>参数说明</td><td>●: 当前已连接的 STA MAC 地址。●: 实时收包物理速率。●: 实时收包协议。●: 信号接收强度。●: 设备的空间流情况</td></tr><tr><td>示例</td><td>AT+SHOWSTA</td></tr><tr><td>注意</td><td>-</td></tr></table>

# 5.3.2.5 AT+DEAUTHSTA 断开 STA 连接

<table><tr><td>格式</td><td>AT+DEAUTHSTA=&lt;MAC&gt;</td></tr><tr><td>响应</td><td>●成功:OK●失败:ERROR</td></tr><tr><td>参数说明</td><td>&lt;MAC&gt;:要断开的STA MAC地址。</td></tr><tr><td>示例</td><td>AT+DEAUTHSTA=90:2B:D2:E4:CE:28</td></tr><tr><td>注意</td><td>-</td></tr></table>

# 5.4 Repeater 相关 AT 指令

# 5.4.1 Repeater 相关 AT 指令一览表

<table><tr><td>指令</td><td>描述</td></tr><tr><td>AT+BRCTL</td><td>配置 Repeater 特性开关、网络接口以及相关信息显示。</td></tr></table>


5.4.2 Repeater 相关 AT 指令描述


<table><tr><td>格式</td><td>AT+BRCTL=[,]</td></tr><tr><td>响应</td><td>●成功:OK●失败:ERROR</td></tr><tr><td>参数说明</td><td>●:Repeater配置命令字。addbr:使能 Repeater功能delbr:去使能 Repeater功能addif:添加网络接口,与参数配合使用delif:删除网络接口,与参数配合使用show:打印维测信息,包含 Repeater特性是否使能以及网络接口●:网络接口名</td></tr><tr><td>示例</td><td>AT+BRCTL=addbrAT+BRCTL=addif,wlan0 AT+BRCTL=show</td></tr><tr><td>注意</td><td>●使用 Repeater功能需保证 Repeater特性使能以及STA、Softap网络接口均已添加●添加STA网络接口需保证已连接成功●Softap不需要启用 dhcpps服务器</td></tr></table>

# 5.5 TCP/IP 相关 AT 指令

# 5.5.1 TCP/IP 相关 AT 指令一览表

<table><tr><td>指令</td><td>描述</td></tr><tr><td>AT+IPSTART</td><td>创建 socket,TCP 协议发起连接。</td></tr><tr><td>AT+IPSEND</td><td>发送 TCP/UDP 数据。</td></tr><tr><td>AT+IPLISTEN</td><td>启动 TCP 监听。</td></tr><tr><td>AT+IPCLOSE</td><td>删除 socket,TCP 协议断开连接。</td></tr><tr><td>+IPD</td><td>接收 TCP/UDP 数据的主动上报。</td></tr></table>

# 5.5.2 TCP/IP 相关 AT 指令描述

# 5.5.2.1 AT+IPSTART 创建 socket，TCP 协议发起连接

<table><tr><td>格式</td><td>TCP:AT+IPSTART=,,,,</td><td>UDP:AT+IPSTART=,,</td></tr><tr><td>响应</td><td colspan="2">●成功:OK●失败:ERROR</td></tr><tr><td>参数说明</td><td colspan="2">●:网络连接号,与本机socket绑定,取值范围需要根据业务场景确定,配置网络协议栈socket资源,AT场景仅做功能验证,支持6个TCP连接和4个UDP传输,但总数不超过8个,取值范围0~7。●:IP协议类型。●TCP:TCP连接。●UDP:UDP监听。</td></tr><tr><td></td><td colspan="2">•: 远端 IP 地址。•: 远端端口号。•: 本地端口号。</td></tr><tr><td>示例</td><td colspan="2">AT+IPSTART=0,tcp,192.168.3.1,5001AT+IPSTART=0,udp,5001</td></tr><tr><td>注意</td><td colspan="2">-</td></tr></table>

# 5.5.2.2 AT+IPSEND 发送 TCP/UDP 数据

<table><tr><td>格式</td><td>●发送TCP数据:AT+IPSEND=,,,●发送UDP数据:AT+IPSEND=,,,</td></tr><tr><td>响应</td><td>●成功:OK●失败:ERROR</td></tr><tr><td>参数说明</td><td>●:网络连接号,与本机socket绑定,取值范围:0~7。●:发送数据的长度,最大长度为1024。●:远端IP地址。●:远端端口号。●:要发送的数据。</td></tr><tr><td>示例注意</td><td>AT+IPSEND=0,9,data test OKAT+IPSEND=0,9,192.168.3.1,5001,data test OK<eq>\0</eq> 作为发送结束符,如果要发送<eq>\0</eq>,需转义成<eq>\0</eq>。TCP 和 UDP 发送数据场景,需要组网内开启 Server 端接收数据。</td></tr></table>

# 5.5.2.3 AT+IPLISTEN 启动 TCP 监听

<table><tr><td>格式</td><td>AT+IPLISTEN=[,]</td></tr><tr><td>响应</td><td>成功:OK失败:ERROR</td></tr><tr><td>参数说明</td><td>:0:关闭TCP监听1:启动TCP监听:本地端口号。</td></tr><tr><td>示例</td><td>AT+IPLISTEN=1,5001 AT+IPLISTEN=0</td></tr><tr><td>注意</td><td>取值为0时不需要参数。</td></tr></table>

# 5.5.2.4 AT+IPCLOSE 关闭连接

<table><tr><td>格式</td><td>AT+IPCLOSE=</td></tr><tr><td>响应</td><td>●成功:OK●失败:ERROR</td></tr><tr><td>参数说明</td><td>:网络连接号,与本机 socket 绑定,取值范围:0~7。</td></tr><tr><td>示例</td><td>AT+IPCLOSE=0</td></tr><tr><td>注意</td><td>-</td></tr></table>

# 5.5.2.5 +IPD 接收网络数据

<table><tr><td>格式</td><td>+IPD,,,,,:</td></tr><tr><td>响应</td><td>当系统处于TCP连接态或UDP监听态时,如果收到远端TCP/UDP数据,会主动上报:+IPD,,,,:</td></tr><tr><td>参数说明</td><td>●:网络连接号,与本机socket绑定,取值范围:0~7。●:本次接收数据的长度。●:远端IP地址。●:远端端口号。●:收到的数据。</td></tr><tr><td>示例</td><td>+IPD,0,4,192.168.3.1,5001:abcd</td></tr><tr><td>注意</td><td>单次接收数据长度最大为1024,长度超过1024的数据分多次上报。</td></tr></table>

# 5.6 测试调试相关 AT 指令

# 5.6.1 测试调试相关 AT 指令一览表

<table><tr><td>指令</td><td>描述</td></tr><tr><td>AT+ALTX</td><td>设置常发功能。</td></tr><tr><td>AT+ALRX</td><td>设置常收功能。</td></tr><tr><td>AT+RXINFO</td><td>查询常收。</td></tr><tr><td>AT+CALTONE</td><td>设置单音功能。</td></tr></table>

# 5.6.2 测试调试相关 AT 指令描述

# 5.6.2.1 AT+ALTX 设置常发功能

<table><tr><td>格式</td><td>AT+ALTX=[,,]</td></tr><tr><td>响应</td><td>●成功:OK●失败:ERROR</td></tr><tr><td>参数说明</td><td>●:使能开关</td></tr><tr><td></td><td>0:关闭1:打开●:协议类型0:802.11n1:802.11g2:802.11b3:802.11ax5:11n 40plus6:11n 40minus●:带宽20:20MHz 带宽40:40MHz 带宽●:信道号,取值范围 1~14</td></tr><tr><td>示例</td><td>●开启常发功能AT+STARTSTAAT+ALTX=1,0,20,2其中:1表示使能开关开启,0表示11n协议,20表示20M带宽,2表示2信道。●开启11n40M常发时AT+ALTX=1,5,40,1 其中:5表示40plusAT+ALTX=1,6,40,11 其中:6表示40minus</td></tr><tr><td>注意</td><td>●&lt;chn&gt;不同区域取值范围有差异,中国为1~13。●&lt;control&gt;设置为0时,其他参数不配置。</td></tr></table>

# 5.6.2.2 AT+ALRX 设置常收功能

<table><tr><td>格式</td><td>AT+ALRX=[,,]</td></tr><tr><td>响应</td><td>• 成功:OK• 失败:ERROR</td></tr><tr><td>参数说明</td><td>• :使能开关。0:关闭1:打开•:协议类型。0:802.11n1:802.11g2:802.11b3:802.11ax5:11n 40plus6:11n 40minus:带宽20:20M 带宽40:40M 带宽•:信道号,取值范围 1~14。•:MAC 地址过滤使能开关(暂不支持)。0:关闭1:打开</td></tr><tr><td>示例</td><td>AT+ALRX=1,0,20,1,1 开启常收 11n 40M时:40plus• AT+ALRX=1,5,40,1,0 40minus• AT+ALRX=1,6,40,11,0</td></tr><tr><td>注意</td><td>•不同区域取值范围有差异,中国为 1~13。•设置为 0 时,其他参数不配置。</td></tr></table>

# 5.6.2.3 AT+RXINFO 查询常收

<table><tr><td>格式</td><td>AT+RXINFO</td></tr><tr><td>响应</td><td>+ RXINFO: rx succ num[mpdu,ampdu]: &lt;pkt&gt; fai • num: &lt;pkt&gt; rssi:&lt;d&gt;• 成功: OK• 失败: ERROR</td></tr><tr><td>参数说明</td><td>• : 接收报文数量。• rssi:&lt;d&gt;: 最后一个收包 rssi 强度。</td></tr><tr><td>示例</td><td>AT+RXINFO</td></tr><tr><td>注意</td><td>仪器发包完成后再执行,执行后会清除当前统计值。</td></tr></table>

# 5.6.2.4 AT+CALTONE 设置单音功能

<table><tr><td>格式</td><td>AT+ CALTONE=,,</td></tr><tr><td>响应</td><td>●成功:OK●失败:ERROR</td></tr><tr><td>参数说明</td><td>●:开关,1:开启0:关闭。●:单音偏移频率,单位kHz</td></tr><tr><td>示例</td><td>开启单音,单音频移中心频率2.5MHz AT+ CALTONE=1, 2500关闭单音AT+ CALTONE=0, 0</td></tr><tr><td>注意</td><td>单音功能的命令在WIFI常发后使用。</td></tr></table>

# 5.7 使用场景示例

# 5.7.1 启动/停止 SoftAP

<table><tr><td>启动 SoftAP 示例</td></tr><tr><td>AT+MAC=90:2B:D2:E4:CE:28AT+STARTAP=&quot;XXX&quot;,6,2,&quot;123456789&quot;AT+IFCFG=ap0,192.168.3.1,netmask,255.255.255.0,gateway,192.168.3.1AT+DHCPS=ap0,1</td></tr><tr><td>注意:设置 MAC 地址命令可选,如果不设置则使用随机 MAC;设置的 MAC 地址为 STA 的地址,SoftAP 的地址为 STA 的地址+1。</td></tr></table>

<table><tr><td>停止 SoftAP 示例</td></tr><tr><td>AT+STOPAP</td></tr></table>

# 5.7.2 启动/停止 STA

<table><tr><td>启动 STA 示例</td></tr><tr><td>AT+MAC=90:2B:D2:E4:CE:</td></tr><tr><td>28 AT+STARTSTA</td></tr><tr><td>AT+SCAN</td></tr><tr><td>AT+SCANRESULT</td></tr><tr><td>AT+CONN=&quot;XXX&quot;,&quot;123456</td></tr><tr><td>789&quot; AT+STASTAT</td></tr><tr><td>AT+DHCP=wlan0,1</td></tr><tr><td>注意:设置 MAC 地址命令可选,如果不设置则使用随机 MAC;设置的 MAC 地址为 STA 的地址,SoftAP 的地址为 STA 的地址+1。</td></tr></table>

<table><tr><td>停止 STA 示例</td></tr></table>

AT+STOPSTA 

注意：-

# 5.7.3 启动/停止 Repeater

启动 Repeater 示例

```csv
AT+MAC=90:2B:D2:E4:CE:28
AT+STARTST
A AT+SCAN
AT+SCANRESULT
AT+CONN="XXX", "123456"
789" AT+STASTAT
AT+STARTAP="XXX", 6, 2, "123456"
789" AT+BRCTL=addbr
AT+BRCTL=addif, wlan0 
```

启动 Repeater 示例

```txt
AT + BRCTL = addif, a
p0 AT + BRCTL = show 
```

注意：设置 MAC 地址命令可选，如果不设置则使用随机 MAC；设置的 MAC 地址为 STA 的地址，SoftAP 的地址为 STA 的地址 + 1。

停止 Repeater 示例

```txt
AT + BRCTL = delif, wl
an0
AT + BRCTL = delif, ap0
AT + BRCTL = delbr
注意：-
```

# 5.7.4 吞吐量测试

```txt
吞吐量测试示例
AT+STARTSTA
AT+SCAN
AT+SCANRESULT
AT+CONN="XXX",
0
AT+DHCP=wlan0,1
AT+IFCFG
AT+PING=
192.168.3.1
AT+PING=-k
#UDP 测试，192.168.3.1 为对端 iperf server IP
地址 AT+IPERF=-c,192.168.3.1,-u,-b,100M,-t,30,-i,1
AT+IPERF=-s,-i,1,-u
#TCP 测试
AT+IPERF=-c,192.168.3.1,-i,1,-t,30
AT+IPERF=-s,-i,1 AT+IPERF=-k

注意：AT+IPERF 测试启动前，要保证对端 IP 可 ping 通。
```

# 5.7.5 RF 测试

# 5.7.5.1 RF 常发测试

RF 常发

```csv
AT+RST
AT+STARTSTA
AT+ALTX=1,0,20,1 
```

# 5.7.5.2 RF 常收测试

RF 常收

```txt
AT+RST
AT+MAC=90:2B:D2:E4:CE:
8 AT+STARTSTA
AT+ALRX=1,0,20,1,1
...
AT+RXINFO 
```

注意：AT+RXINFO 为查看常收结果命令。

# 6 指令说明

# 6.1 BLE

# 6.1.1 BLE AT 指令一览表

# 6.1.1.1 gap 模块 AT 命令

<table><tr><td>指令</td><td>描述</td></tr><tr><td>AT+BLEENABLE</td><td>使能 BLE 协议栈</td></tr><tr><td>AT+BLEDISABLE</td><td>关闭 BLE 协议栈</td></tr><tr><td>AT+BLESETADDR=&lt;参数&gt;</td><td>设置本地设备地址</td></tr><tr><td>AT+BLEGETADDR</td><td>获取本地设备地址</td></tr><tr><td>AT+BLESETNAME=&lt;参数&gt;</td><td>设置本地设备名称</td></tr><tr><td>AT+BLEGETNAME</td><td>获取本地设备名称</td></tr><tr><td>AT+BLESETAPPEARANCE=&lt;参数&gt;</td><td>设置本地设备外观</td></tr><tr><td>AT+BLESETADVDATA=&lt;参数&gt;</td><td>设置 BLE 广播数据</td></tr><tr><td>AT+BLESETADVPAR=&lt;参数&gt;</td><td>设置 BLE 广播参数</td></tr><tr><td>AT+BLESTARTADV=&lt;参数&gt;</td><td>开始发送 BLE 广播</td></tr><tr><td>AT+BLESTOPADV=&lt;参数&gt;</td><td>停止发送 BLE 广播</td></tr><tr><td>AT+BLESETSCANPAR=&lt;参数&gt;</td><td>设置 BLE 扫描参数</td></tr><tr><td>AT+BLESTARTSCAN</td><td>启动 BLE 扫描</td></tr><tr><td>AT+BLESTOPSCAN</td><td>停止 BLE 扫描</td></tr><tr><td>AT+BLEPAIR=&lt;参数&gt;</td><td>与对端设备发起配对</td></tr><tr><td>AT+BLEGETPAIREDNUM</td><td>获取 BLE 设备配对设备数量</td></tr><tr><td>AT+BLEGETPAIREDDEV</td><td>获取 BLE 设备配对设备</td></tr><tr><td>AT+BLEGETPAIREDSTA=&lt;参数&gt;</td><td>获取 BLE 设备配对状态</td></tr><tr><td>AT+BLEUNPAIR=&lt;参数&gt;</td><td>取消配对</td></tr><tr><td>AT+BLEUNPAIRALL</td><td>取消所有配对</td></tr><tr><td>AT+BLECONNPARUPD=&lt;参数&gt;</td><td>连接参数更新</td></tr><tr><td>AT+BLECONN=&lt;参数&gt;</td><td>与 BLE 设备连接</td></tr><tr><td>AT+BLEDISCONN=&lt;参数&gt;</td><td>断开 BLE 设备连接</td></tr><tr><td>AT+BLEGAPREGCBK</td><td>注册 gap 回调函数</td></tr></table>

# 6.1.1.2 gatts 模块 AT 命令

<table><tr><td>指令</td><td>描述</td></tr><tr><td>AT+GATTSREGSRV=&lt;参数&gt;</td><td>创建一个 GATT server</td></tr><tr><td>AT+GATTSUNREG=&lt;参数&gt;</td><td>删除 GATT server,释放资源</td></tr><tr><td>AT+GATTSADDSERV=&lt;参数&gt;</td><td>添加一个 GATT 服务</td></tr><tr><td>AT+GATTSSYNCADDSERV=&lt;参数&gt;</td><td>添加一个 GATT 服务(同步)</td></tr><tr><td>AT+GATTSADDCHAR=&lt;参数&gt;</td><td>为 GATT 服务添加一个特征</td></tr><tr><td>AT+GATTSSYNCADDCHAR=&lt;参数&gt;</td><td>为 GATT 服务添加一个特征(同步)</td></tr><tr><td>AT+GATTSADDDESCR=&lt;参数&gt;</td><td>为最新的特征添加一个描述符</td></tr><tr><td>AT+GATTSSYNCADDDESCR=&lt;参数&gt;</td><td>为最新的特征添加一个描述符(同步)</td></tr><tr><td>AT+GATTSSTARTSERV=&lt;参数&gt;</td><td>启动指定的 GATT 服务</td></tr><tr><td>AT+GATTSDELALLSERV=&lt;参数&gt;</td><td>删除指定 server 上的所有服务</td></tr><tr><td>AT+GATTSSENDRSP=&lt;参数&gt;</td><td>发送响应</td></tr><tr><td>AT+GATTSSNDNTFY=&lt;参数&gt;</td><td>发送通知或指示</td></tr><tr><td>AT+GATTSSNDNTFYBYUUID=&lt;参数&gt;</td><td>根据 uuid 发送通知或指示</td></tr><tr><td>AT+GATTSREGCBK</td><td>注册 GATT 服务端回调函数</td></tr><tr><td>AT+GATTSSETMTU=&lt;参数&gt;</td><td>在连接之前设置 server rx mtu</td></tr></table>

# 6.1.1.3 gattc 模块 AT 命令

<table><tr><td>指令</td><td>描述</td></tr><tr><td>AT+GATTCREG=&lt;参数&gt;</td><td>创建一个 GATT client</td></tr><tr><td>AT+GATTCUNREG=&lt;参数&gt;</td><td>删除 GATT client,释放资源</td></tr><tr><td>AT+GATTCFNDSERV=&lt;参数&gt;</td><td>发现所有服务(可 by uuid)</td></tr><tr><td>AT+GATTCFNDCHAR=&lt;参数&gt;</td><td>发现所有特征</td></tr><tr><td>AT+GATTCFNDDESCR=&lt;参数&gt;</td><td>发现所有描述符</td></tr><tr><td>AT+GATTCREADBYHDL=&lt;参数&gt;</td><td>读取 by hdl</td></tr><tr><td>AT+GATTCREADBYUUID=&lt;参数&gt;</td><td>读取 by_uuid</td></tr><tr><td>AT+GATTCWRITEREQ=&lt;参数&gt;</td><td>写 by hd• req</td></tr><tr><td>AT+GATTCWRITECMD=&lt;参数&gt;</td><td>写 by hd• cmd</td></tr><tr><td>AT+GATTCEXCHMTU=&lt;参数&gt;</td><td>交换 mtu 请求</td></tr><tr><td>AT+GATTCREGCBK</td><td>注册 GATT 客户端回调函数</td></tr></table>

# 6.1.2 BLE AT 指令描述

# 6.1.2.1 gap 模块 AT 命令

# 6.1.2.1.1 AT+BLEENABLE 使能 ble 协议栈

<table><tr><td>格式</td><td>AT+BLEENABLE</td></tr><tr><td>响应</td><td>打开 BLE 开关 OK</td></tr><tr><td>参数说明</td><td>-</td></tr><tr><td>示例</td><td>AT+BLEENABLE</td></tr><tr><td>注意</td><td>-</td></tr></table>

# 6.1.2.1.2 AT+BLEDISABLE 关闭 ble 协议栈

<table><tr><td>格式</td><td>AT+BLEDISABLE</td></tr><tr><td>响应</td><td>关闭 BLE 开关 OK</td></tr><tr><td>参数说明</td><td>-</td></tr><tr><td>示例</td><td>AT+BLEDISABLE</td></tr><tr><td>注意</td><td>-</td></tr></table>

# 6.1.2.1.3 AT+BLESETADDR 设置本地设备地址

<table><tr><td>格式</td><td>AT+ BLESETADDR=</td></tr><tr><td>响应</td><td>正确:OK错误:ERROR</td></tr><tr><td>参数说明</td><td>蓝牙设备类型:蓝牙设备地址</td></tr><tr><td>示例</td><td>AT+ BLESETADDR=0,0x112233445566</td></tr><tr><td>注意</td><td>设备类型取值范围为{0(公共设备地址),1(随机设备地址),2(公共本端地址),3(随机静态本端地址)},设备地址为长度为14的字符串</td></tr></table>

# 6.1.2.1.4 AT+BLEGETADDR 获取本地设备地址

<table><tr><td>格式</td><td>AT+BLEGETADDR</td></tr><tr><td>响应</td><td>● 正确:本地设备地址● 错误:ERROR</td></tr><tr><td>参数说明</td><td>-</td></tr><tr><td>示例</td><td>AT+BLEGETADDR</td></tr><tr><td>注意</td><td>-</td></tr></table>

# 6.1.2.1.5 AT+BLESETNAME 设置本地设备名称

<table><tr><td>格式</td><td>AT+ BLESETNAME=</td></tr><tr><td>响应</td><td>正确:OK错误:ERROR</td></tr><tr><td>参数说明</td><td>:本地设备名称长度。:本地设备名称。</td></tr><tr><td>示例</td><td>AT+BLESETNAME=9,atcmdtest</td></tr><tr><td>注意</td><td>名称长度取值范围为[0,255],设备名称长度为len-1的字符串,名称最后默认存在’/0’</td></tr></table>

# 6.1.2.1.6 AT+BLEGETNAME 获取本地设备名称

<table><tr><td>格式</td><td>AT+BLEGETNAME</td></tr><tr><td>响应</td><td>● 正确:本地设备名称● 错误:ERROR</td></tr><tr><td>参数说明</td><td>-</td></tr><tr><td>示例</td><td>AT+BLEGETNAME</td></tr><tr><td>注意</td><td>-</td></tr></table>

# 6.1.2.1.7 AT+BLESETAPPEARANCE 设置本地设备外观

<table><tr><td>格式</td><td>AT+BLESETAPPEARANCE=</td></tr><tr><td>响应</td><td>● 正确:OK● 错误:ERROR</td></tr><tr><td>参数说明</td><td>&lt;appearance&gt;:本地设备外观</td></tr><tr><td>示例</td><td>AT+ BLESETAPPEARANCE=961</td></tr><tr><td>注意</td><td>参数值应为规定值,示例中961为键盘的外观值,具体请参考附录表1</td></tr></table>

# 6.1.2.1.8 AT+BLESETADVDATA 设置 BLE 广播数据

<table><tr><td>格式</td><td>AT+ BLESETADVDATA=&lt;adv_length, adv_data, scan_rsp_length, scan_rsp_data, adv_id&gt;</td></tr><tr><td>响应</td><td>● 正确:OK● 错误:ERROR</td></tr><tr><td>参数说明</td><td></td></tr></table>

# 6.1.2.1.9 AT+BLESETADVPAR 设置广播数据参数

<table><tr><td>格式</td><td>AT+BLESETADVPAR=&lt;min_interval,max_interval,adv_type,own_addr,peer_addr_type,peer_addr,channel_map,adv_filter_policy,tx_power,duration,adv_id&gt;</td></tr><tr><td>响应</td><td>●成功:OK●失败:ERROR</td></tr><tr><td>参数说明</td><td></td></tr></table>

# 6.1.2.1.10 AT+BLESTARTADV 开始发送 BLE 广播

<table><tr><td>格式</td><td>AT+ BLESTARTADV=</td></tr><tr><td>响应</td><td>• 成功:OK• 失败:ERROR</td></tr><tr><td>参数说明</td><td>:广播 id</td></tr><tr><td>示例</td><td>AT+ BLESTARTADV=1</td></tr><tr><td>注意</td><td>-</td></tr></table>

# 6.1.2.1.11 AT+BLESTOPADV 停止发送 BLE 广播

<table><tr><td>格式</td><td>AT+BLESTOPADV=&lt;adv_id&gt;</td></tr><tr><td>响应</td><td>●成功:OK●失败:ERROR</td></tr><tr><td>参数说明</td><td>&lt;adv_id&gt;:广播id</td></tr><tr><td>示例</td><td>AT+BLESTOPADV=1</td></tr><tr><td>注意</td><td>-</td></tr></table>

# 6.1.2.1.12 AT+BLESETSCANPAR 设置 BLE 扫描参数

<table><tr><td>格式</td><td>AT+BLESETSCANPAR=</td></tr><tr><td>响应</td><td>成功:OK失败:ERROR</td></tr><tr><td>参数说明</td><td>:扫描间隔;取值范围[0x04,0x4000], Time=N*0.625ms:扫描窗口;取值范围[0x04,0x4000], Time=N*0.625ms:扫描类型;\{0(被动扫描),1(主动扫描)\}:扫描 phy;:扫描过滤策略;</td></tr><tr><td>示例</td><td>AT+BLESETSCANPAR=0x48,0x48,0,1,0</td></tr><tr><td>注意</td><td>-</td></tr></table>

# 6.1.2.1.13 AT+BLESTARTSCAN 启动 BLE 扫描

<table><tr><td>格式</td><td>AT+BLESTARTSCAN</td></tr><tr><td>响应</td><td>● 成功:OK● 失败:ERROR</td></tr><tr><td>参数说明</td><td>-</td></tr><tr><td>示例</td><td>AT+BLESTARTSCAN</td></tr><tr><td>注意</td><td>-</td></tr></table>

# 6.1.2.1.14 AT+BLESTOPSCAN 停止 BLE 扫描

<table><tr><td>格式</td><td>AT+BLESTOPSCAN</td></tr><tr><td>响应</td><td>● 成功:OK● 失败:ERROR</td></tr><tr><td>参数说明</td><td>-</td></tr><tr><td>示例</td><td>AT+BLESTOPSCAN</td></tr><tr><td>注意</td><td>-</td></tr></table>

# 6.1.2.1.15 AT+BLEPAIR 与对端设备发起配对

<table><tr><td>格式</td><td>AT + BLEPAIR= &lt; addr_type, addr&gt;</td></tr><tr><td>响应</td><td>●成功:OK●失败:ERROR</td></tr><tr><td>参数说明</td><td>&lt;addr_type&gt;:蓝牙设备类型&lt;addr&gt;:蓝牙设备地址</td></tr><tr><td>示例</td><td>AT+BLEPAIR=0,0x112233445566</td></tr><tr><td>注意</td><td>设备类型取值范围为{0(公共设备地址),1(随机设备地址),2(公共本端地址),3(随机静态本端地址)},设备地址为长度为14的字符串</td></tr></table>

# 6.1.2.1.16 AT+BLEGETPAIREDNUM 获取 BLE 设备配对设备数量

<table><tr><td>格式</td><td>AT+BLEGETPAIREDNUM</td></tr><tr><td>响应</td><td>● 成功:配对设备数量● 失败:ERROR</td></tr><tr><td>参数说明</td><td>-</td></tr><tr><td>示例</td><td>AT+BLEGETPAIREDNUM</td></tr><tr><td>注意</td><td>-</td></tr></table>

# 6.1.2.1.17 AT+BLEGETPAIREDDEV 获取 BLE 设备配对设备

<table><tr><td>格式</td><td>AT+BLEGETPAIREDDEV</td></tr><tr><td>响应</td><td>• 成功:配对设备地址• 失败:ERROR</td></tr><tr><td>参数说明</td><td>-</td></tr><tr><td>示例</td><td>AT+BLEGETPAIREDDEV</td></tr><tr><td>注意</td><td>-</td></tr></table>

# 6.1.2.1.18 AT+BLEGETPAIREDSTA 获取 BLE 设备配对状态

<table><tr><td>格式</td><td>AT+BLEGETPAIREDSTA=&lt;addr_type,addr&gt;</td></tr><tr><td>响应</td><td>●成功: BLE设备配对状态●失败: ERROR</td></tr><tr><td>参数说明</td><td>&lt;addr_type&gt;:蓝牙设备类型&lt;addr&gt;:蓝牙设备地址</td></tr><tr><td>示例</td><td>AT+BLEGETPAIREDSTA=0,0x112233445566</td></tr><tr><td>注意</td><td>设备类型取值范围为{0(公共设备地址),1(随机设备地址),2(公共本端地址),3(随机静态本端地址)},设备地址为长度为14的字符串</td></tr></table>

# 6.1.2.1.19 AT+BLEUNPAIR 取消配对

<table><tr><td>格式</td><td>AT+ BLEUNPAIR=</td></tr><tr><td>响应</td><td>● 成功:断连● 失败:ERROR</td></tr><tr><td>参数说明</td><td>:蓝牙设备类型:蓝牙设备地址</td></tr><tr><td>示例</td><td>AT+BLEUNPAIR=0,0x112233445566</td></tr><tr><td>注意</td><td>设备类型取值范围为{0(公共设备地址),1(随机设备地址),2(公共本端地址),3(随机静态本端地址)},设备地址为长度为14的字符串</td></tr></table>

# 6.1.2.1.20 AT+BLEUNPAIR 取消所有配对

<table><tr><td>格式</td><td>AT+BLEUNPAIR</td></tr><tr><td>响应</td><td>● 成功:断连● 失败:ERROR</td></tr><tr><td>参数说明</td><td>-</td></tr><tr><td>示例</td><td>AT+BLEUNPAIR</td></tr><tr><td>注意</td><td>-</td></tr></table>

# 6.1.2.1.21 AT+BLECONNPARUPD 更新连接参数

<table><tr><td>格式</td><td>AT+BLECONNPARUPD=</td></tr><tr><td>响应</td><td>• 成功:OK• 失败:ERROR</td></tr><tr><td>参数说明</td><td>:连接句柄;:链路调度最小间隔,[0x06,0x0C80],Time=N*1.25ms:链路调度最大间隔,[0x06,0x0C80],Time=N*1.25ms:延迟周期,单位 slot(该值表示在设置值的周期内可以不回复,为 0 时则表示每包都需回复):超时断连间隔</td></tr><tr><td>示例</td><td>AT+BLECONNPARUPD=0, 0x48,0x48,0,500</td></tr><tr><td>注意</td><td>-</td></tr></table>

# 6.1.2.1.22 AT+BLECONN 与 BLE 设备连接

<table><tr><td>格式</td><td>AT+BLECONN=&lt;addr_type,addr&gt;</td></tr><tr><td>响应</td><td>●成功:OK●失败:ERROR</td></tr><tr><td>参数说明</td><td>&lt;addr_type&gt;:蓝牙设备类型&lt;addr&gt;:蓝牙设备地址</td></tr><tr><td>示例</td><td>AT+BLECONN=0,0x112233445566</td></tr><tr><td>注意</td><td>设备类型取值范围为{0(公共设备地址),1(随机设备地址),2(公共本端地址),3(随机静态本端地址)},设备地址为长度为14的字符串</td></tr></table>

# 6.1.2.1.23 AT+BLEDISCONN 与 BLE 设备断开连接

<table><tr><td>格式</td><td>AT+ BLEDISCONN= &lt;addr_type,addr&gt;</td></tr><tr><td>响应</td><td>• 成功:OK• 失败:ERROR</td></tr><tr><td>参数说明</td><td>:蓝牙设备类型:蓝牙设备地址</td></tr><tr><td>示例</td><td>AT+BLEDISCONN=0,0x112233445566</td></tr><tr><td>注意</td><td>设备类型取值范围为{0(公共设备地址),1(随机设备地址),2(公共本端地址),3(随机静态本端地址)},设备地址为长度为14的字符串</td></tr></table>

# 6.1.2.1.24 AT+BLEGAPREGCBK 注册 BLE 回调函数

<table><tr><td>格式</td><td>AT+BLEGAPREGCBK</td></tr><tr><td>响应</td><td>● 成功:OK● 失败:ERROR</td></tr><tr><td>参数说明</td><td>-</td></tr><tr><td>示例</td><td>AT+BLEGAPREGCBK</td></tr><tr><td>注意</td><td>-</td></tr></table>

# 6.1.2.2 gatts 模块 AT 命令

# 6.1.2.2.1 AT+GATTSREGSRV 创建一个 GATT server

<table><tr><td>格式</td><td>AT+ GATTSREGSRV=</td></tr><tr><td>响应</td><td>● 成功: OK● 失败: ERROR</td></tr><tr><td>参数说明</td><td>: 应用 uuid</td></tr><tr><td>示例</td><td>AT+ GATTSREGSRV=0x1122</td></tr><tr><td>注意</td><td>-</td></tr></table>

# 6.1.2.2.2 AT+GATTSUNREG 删除 GATT server，释放资源

<table><tr><td>格式</td><td>AT+GATTSUNREG=</td></tr><tr><td>响应</td><td>• 成功:OK• 失败:ERROR</td></tr><tr><td>参数说明</td><td>:应用 uuid</td></tr><tr><td>示例</td><td>AT+GATTSUNREG=0x1122</td></tr><tr><td>注意</td><td>-</td></tr></table>

# 6.1.2.2.3 AT+GATTSADDSERV 添加一个 GATT 服务

<table><tr><td>格式</td><td>AT+GATTSADDSERV=&lt;server_id,svc_uuid,is_primary_flag&gt;</td></tr><tr><td>响应</td><td>●成功:OK●失败:ERROR</td></tr><tr><td>参数说明</td><td>&lt;server_id&gt;:服务端id&lt;svc_uuid&gt;:服务uuid&lt;is_primary_flag&gt;:是否是首要服务</td></tr><tr><td>示例</td><td>AT+GATTSADDSERV=1,0x1812,1</td></tr><tr><td>注意</td><td>-</td></tr></table>

# 6.1.2.2.4 AT+GATTSSYNCADDSERV 添加一个 GATT 服务（同步）

<table><tr><td>格式</td><td>AT+GATTSSYNCADDSERV=</td></tr><tr><td>响应</td><td>成功:OK失败:ERROR</td></tr><tr><td>参数说明</td><td>:服务端id:服务uuid:是否是首要服务</td></tr><tr><td>示例</td><td>AT+GATTSSYNCADDSERV=1,0x1812,1</td></tr><tr><td>注意</td><td>-</td></tr></table>

# 6.1.2.2.5 AT+GATTSADDCHAR 为 GATT 服务添加一个特征

<table><tr><td>格式</td><td>AT+GATTSADDCHAR=</td></tr><tr><td>响应</td><td>成功:OK失败:ERROR</td></tr><tr><td>参数说明</td><td>:服务端 id:服务句柄:特征uuid:权限:特性:值长度:值</td></tr><tr><td>示例</td><td>AT+GATTSADDCHAR=1,1,0x1234,0x01,0x02,4,01010003</td></tr><tr><td>注意</td><td>值是长度为值长度两倍的字符串</td></tr></table>

# 6.1.2.2.6 AT+GATTSSYNCADDCHAR 为 GATT 服务添加一个特征（同步）

<table><tr><td>格式</td><td>AT+GATTSSYNCADDCHAR=</td></tr><tr><td>响应</td><td>成功:OK失败:ERROR</td></tr><tr><td>参数说明</td><td>:服务端 id:服务句柄:特征uuid:权限:特性:值长度:值</td></tr><tr><td>示例</td><td>AT+GATTSSYNCADDCHAR=1,1,0x2a4a,0x01,0x02,4,01010 003</td></tr><tr><td>注意</td><td>值是长度为值长度两倍的字符串</td></tr></table>

# 6.1.2.2.7 AT+GATTSADDDESCR 为最新的特征添加一个描述符

<table><tr><td>格式</td><td>AT+GATTSADDDESCR=</td></tr><tr><td>响应</td><td>●成功:OK●失败:ERROR</td></tr><tr><td>参数说明</td><td>&lt;server_id&gt;:服务端 id&lt;service_handle&gt;:服务句柄&lt;chara_uuid&gt;:特征uuid:权限&lt;value_len&gt;:值长度:值</td></tr><tr><td>示例</td><td>AT+GATTSADDDESCR=1,1,0x2902,0x03,2,0100</td></tr><tr><td>注意</td><td>值是长度为值长度两倍的字符串</td></tr></table>

# 6.1.2.2.8 AT+GATTSSYNCADDDESCR 为最新的特征添加一个描述符（同步）

<table><tr><td>格式</td><td>AT+GATTSSYNCADDDESCR=</td></tr><tr><td>响应</td><td>成功:OK失败:ERROR</td></tr><tr><td>参数说明</td><td>:服务端 id:服务句柄:特征uuid:权限:值长度:值</td></tr><tr><td>示例</td><td>AT+GATTSSYNCADDDESCR=1,1,0x2902,0x03,2,0100</td></tr><tr><td>注意</td><td>值是长度为值长度两倍的字符串</td></tr></table>

# 6.1.2.2.9 AT+GATTSSTARTSERV 启动指定的 GATT 服务

<table><tr><td>格式</td><td>AT+GATTSSTARTSERV=</td></tr><tr><td>响应</td><td>● 成功:OK● 失败:ERROR</td></tr><tr><td>参数说明</td><td>&lt;server_id&gt;:服务端 id&lt;service_handle&gt;:服务句柄</td></tr><tr><td>示例</td><td>AT+GATTSSTARTSERV=1,1</td></tr><tr><td>注意</td><td>-</td></tr></table>

# 6.1.2.2.10 AT+GATTSDELALLSERV 删除指定 server 上的所有服务

<table><tr><td>格式</td><td>AT+ GATTSDELALLSERV= &lt;server_id&gt;</td></tr><tr><td>响应</td><td>● 成功: OK● 失败: ERROR</td></tr><tr><td>参数说明</td><td>&lt;server_id&gt;: 服务端 id</td></tr><tr><td>示例</td><td>AT+GATTSDELALLSERV=1</td></tr><tr><td>注意</td><td>-</td></tr></table>

# 6.1.2.2.11 AT+GATTSSENDRSP 发送响应

<table><tr><td>格式</td><td>AT+GATTSSENDRSP=&lt;server_id,conn_handle,request_id,status,offs et,value_len,value&gt;</td></tr><tr><td>响应</td><td>●成功:OK●失败:ERROR</td></tr><tr><td>参数说明</td><td>&lt;server_id&gt;:服务端 id&lt;conn_handle&gt;:连接句柄&lt;request_id&gt;:请求id&lt;status&gt;:请求结果&lt;offset&gt;:偏移&lt;value_len&gt;:值长度&lt;value&gt;:值</td></tr><tr><td>示例</td><td>AT+GATTSSENDRSP=1,0,req_id,0,0,2,0x4562</td></tr><tr><td>注意</td><td>值是长度为值长度两倍的字符串</td></tr></table>

# 6.1.2.2.12 AT+GATTSSNDNTFY 发送通知或指示

<table><tr><td>格式</td><td>AT+GATTSSNDNTFY=</td></tr><tr><td>响应</td><td>●成功:OK●失败:ERROR</td></tr><tr><td>参数说明</td><td>&lt;server_id&gt;:服务端id&lt;conn_handle&gt;:连接句柄&lt;attr_handle&gt;:偏移&lt;value_len&gt;:值长度&lt;value&gt;:值</td></tr><tr><td>示例</td><td>AT+GATTSSNDNTFY=1,0,9,7,0x00000000000014</td></tr><tr><td>注意</td><td>值是长度为值长度两倍的字符串</td></tr></table>

# 6.1.2.2.13 AT+GATTSSNDNTFYBYUUID 根据 uuid 发送通知或指示

<table><tr><td>格式</td><td>AT+GATTSSNDNTFYBYUUID=</td></tr><tr><td>响应</td><td>成功:OK失败:ERROR</td></tr><tr><td>参数说明</td><td>:服务端 id:连接句柄:特征 uuid:起始句柄</td></tr><tr><td></td><td>:结束句柄:值长度:值</td></tr><tr><td>示例</td><td>AT+GATTSSNDNTFYBYUUID=1,0,0x2a4d,1,9,7,0x00000000000014</td></tr><tr><td>注意</td><td>值是长度为值长度两倍的字符串</td></tr></table>

# 6.1.2.2.14 AT+GATTSREGCBK 注册 GATT 服务端回调函数

<table><tr><td>格式</td><td>AT+GATTSREGCBK</td></tr><tr><td>响应</td><td>● 成功:OK● 失败:ERROR</td></tr><tr><td>参数说明</td><td>-</td></tr><tr><td>示例</td><td>AT+GATTSREGCBK</td></tr><tr><td>注意</td><td>-</td></tr></table>

# 6.1.2.2.15 AT+GATTSSETMTU 在连接之前设置 server rx mtu

<table><tr><td>格式</td><td>AT+ GATTSSETMTU= &lt;server_id,mtu_size&gt;</td></tr><tr><td>响应</td><td>• 成功:OK• 失败:ERROR</td></tr><tr><td>参数说明</td><td>&lt;server_id&gt;: 服务端 id :mtu 大小</td></tr><tr><td>示例</td><td>AT+ GATTSSETMTU=1,23</td></tr><tr><td>注意</td><td>-</td></tr></table>

# 6.1.2.3 gattc 模块 AT 命令

# 6.1.2.3.1 AT+GATTCREG 创建一个 GATT client

<table><tr><td>格式</td><td>AT+GATTCREG=</td></tr><tr><td>响应</td><td>●成功:OK●失败:ERROR</td></tr><tr><td>参数说明</td><td>:应用 uuid</td></tr><tr><td>示例</td><td>AT+GATTCREG=0x1212</td></tr><tr><td>注意</td><td>-</td></tr></table>

# 6.1.2.3.2 AT+GATTCUNREG 删除 GATT client，释放资源

<table><tr><td>格式</td><td>AT+ GATTCUNREG=</td></tr><tr><td>响应</td><td>● 成功:OK● 失败:ERROR</td></tr><tr><td>参数说明</td><td>:客户端 id</td></tr><tr><td>示例</td><td>AT+ GATTCUNREG=1</td></tr><tr><td>注意</td><td>-</td></tr></table>

# 6.1.2.3.3 AT+GATTCFNDSERV 发现服务

<table><tr><td>格式</td><td>AT+GATTCFNDSERV=</td></tr><tr><td>响应</td><td>成功:OK失败:ERROR</td></tr><tr><td>参数说明</td><td>:客户端 id:连接 id:应用 uuid</td></tr><tr><td>示例</td><td>AT+GATTCFNDSERV=1,1,0x1212</td></tr><tr><td>注意</td><td>-</td></tr></table>

# 6.1.2.3.4 AT+GATTCFNDCHAR 发现特征

<table><tr><td>格式</td><td>T+GATTCFNDCHAR=</td></tr><tr><td>响应</td><td>● 成功:OK● 失败:ERROR</td></tr><tr><td>参数说明</td><td>: 客户端 id; : 连接 id: 服务句柄: 应用 uuid</td></tr><tr><td>示例</td><td>AT+GATTCFNDCHAR=1,1,0,0x1212</td></tr><tr><td>注意</td><td>-</td></tr></table>

# 6.1.2.3.5 AT+GATTCFNDDESCR 发现描述符

<table><tr><td>格式</td><td>AT+ GATTCFNDDESCR= &lt;client_id,conn_id,handle&gt;</td></tr><tr><td>响应</td><td>• 成功:OK• 失败:ERROR</td></tr><tr><td>参数说明</td><td>&lt;client_id&gt;: 客户端 id &lt;conn_id&gt;: 连接 id&lt;handle&gt;: 服务句柄</td></tr><tr><td>示例</td><td>AT+ GATTCFNDDESCR=1,1,0</td></tr><tr><td>注意</td><td>-</td></tr></table>

# 6.1.2.3.6 AT+GATTCREADBYHD● 读取 by hdl

<table><tr><td>格式</td><td>AT+ GATTCREADBYHDL=&lt;client_id,conn_id,handle&gt;</td></tr><tr><td>响应</td><td>●成功:OK●失败:ERROR</td></tr><tr><td>参数说明</td><td>&lt;client_id&gt;: 客户端 id &lt;conn_id&gt;: 连接 id &lt;handle&gt;: 服务句柄</td></tr><tr><td>示例</td><td>AT+GATTCREADBYHDL=1,1,0</td></tr><tr><td>注意</td><td>-</td></tr></table>

# 6.1.2.3.7 AT+GATTCREADBYUUID 读取 by_uuid

<table><tr><td>格式</td><td>AT+GATTCREADBYUUID=&lt;client_id,conn_id,start_hdl,end_hdl,uuid&gt;</td></tr><tr><td>响应</td><td>●成功:OK●失败:ERROR</td></tr><tr><td>参数说明</td><td>&lt;client_id&gt;: 客户端 id&lt;conn_id&gt;: 连接 id&lt;start_hdl&gt;: 起始句柄&lt;end_hdl&gt;: 结束句柄&lt;uuid&gt;: 想要读的 uuid</td></tr><tr><td>示例</td><td>AT+GATTCREADBYUUID=1,0,13,13,2a4d</td></tr><tr><td>注意</td><td>-</td></tr></table>

# 6.1.2.3.8 AT+GATTCWRITEREQ 写 by hd•req

<table><tr><td>格式</td><td>AT+ GATTCWRITEREQ= &lt;client_id,conn_id,handle,data_● en,data&gt;</td></tr><tr><td>响应</td><td>● 成功:OK● 失败:ERROR</td></tr><tr><td>参数说明</td><td>&lt;client_id&gt;: 客户端 id &lt;conn_id&gt;: 连接 id</td></tr></table>

<table><tr><td></td><td>:句柄:数据长度:数据</td></tr><tr><td>示例</td><td>AT+GATTCWRITEREQ=1,0,13,1,0x11</td></tr><tr><td>注意</td><td>-</td></tr></table>

# 6.1.2.3.9 AT+GATTCWRITECMD 写 by hd• cmd

<table><tr><td>格式</td><td>AT+GATTCWRITECMD=&lt;client_id,conn_id,handle,data_●en,data&gt;</td></tr><tr><td>响应</td><td>●成功:OK●失败:ERROR</td></tr><tr><td>参数说明</td><td>&lt;client_id&gt;: 客户端id;&lt;conn_id&gt;: 连接id&lt;handle&gt;: 句柄&lt;data_len&gt;: 数据</td></tr><tr><td></td><td>长度:数据</td></tr><tr><td>示例</td><td>AT+GATTCWRITECMD=1,0,13,1,0x11</td></tr><tr><td>注意</td><td>-</td></tr></table>

# 6.1.2.3.10 AT+GATTCEXCHMTU 交换 MTU 请求

<table><tr><td>格式</td><td>AT+ GATTCEXCHMTU=</td></tr><tr><td>响应</td><td>成功: OK失败: ERROR</td></tr><tr><td>参数说明</td><td>: 服务端 id : 连接 id: client rx mtu 大小</td></tr><tr><td>示例</td><td>AT+ GATTCEXCHMTU=1,0,100</td></tr><tr><td>注意</td><td>-</td></tr></table>

# 6.1.2.3.11 AT+GATTCREGCBK 注册 GATT 客户端回调函数

<table><tr><td>格式</td><td>AT+GATTCREGCBK</td></tr><tr><td>响应</td><td>• 成功:OK• 失败:ERROR</td></tr><tr><td>参数说明</td><td>-</td></tr><tr><td>示例</td><td>AT+GATTCREGCBK</td></tr><tr><td>注意</td><td>-</td></tr></table>

# 6.2 SLE

# 6.2.1 SLE AT 指令一览表

<table><tr><td>指令</td><td>描述</td></tr><tr><td>AT+SLEENABLE</td><td>SLE 使能</td></tr><tr><td>AT+SLESETADVPAR</td><td>设置 SLE 广播参数</td></tr><tr><td>AT+SLESETADVDATA</td><td>设置指令</td></tr><tr><td>AT+SLESTARTADV</td><td>起 SLE 广播</td></tr><tr><td>AT+SLESTOPADV</td><td>停 SLE 广播</td></tr><tr><td>AT+SLESTARTSCAN</td><td>启动扫描</td></tr><tr><td>AT+SLESTOPSCAN</td><td>关闭扫描</td></tr><tr><td>AT+SLESETNAME</td><td>设置本端名称</td></tr><tr><td>AT+SLEGETNAME</td><td>获取本端名称</td></tr><tr><td>AT+SLESETADDR</td><td>设置本端地址</td></tr></table>

<table><tr><td>指令</td><td>描述</td></tr><tr><td>AT+SLEGETADDR</td><td>获取本端地址</td></tr><tr><td>AT+SLECONN</td><td>建立 SLE 连接</td></tr><tr><td>AT+SLEDISCONN</td><td>断开 SLE 连接</td></tr><tr><td>AT+SLESETPHY</td><td>设置 SLE PHY</td></tr><tr><td>AT+SLEDEFAULTCON N</td><td>设置 SLE 默认连接参数</td></tr><tr><td>AT+SLEPAIR</td><td>进行加密配对</td></tr><tr><td>AT+SLEUNPAIR</td><td>移除加密配对</td></tr><tr><td>AT+SLEGETPAIREDN U M</td><td>获取配对设备数目</td></tr><tr><td>AT+SLEGETPAIRDEV</td><td>获取配对设备</td></tr><tr><td>AT+SLEGETPAIRSTA</td><td>获取配对状态</td></tr><tr><td>AT+SLEGETBONDDEV</td><td>获取绑定设备状态</td></tr><tr><td>AT+SLECONNPARUP D</td><td>星闪逻辑链路更新参数</td></tr><tr><td>AT+SLEREADPEERR S SI</td><td>读取对端 rssi</td></tr><tr><td>AT+SSAPSADDSRV</td><td>注册服务端</td></tr><tr><td>AT+SSAPSDELALLSRV</td><td>删除服务端</td></tr><tr><td>AT+SSAPSADDSERV</td><td>添加服务</td></tr><tr><td>AT+SSAPSSYNCAD DS ERV</td><td>添加服务同步</td></tr><tr><td>AT+SSAPSADDPRO PE RTY</td><td>添加属性</td></tr><tr><td>AT+SSAPSSYNCAD DP ROPERTY</td><td>添加属性同步</td></tr><tr><td>AT+SSAPSADDDESCR</td><td>添加属性描述符</td></tr><tr><td>AT+SSAPSSYNCAD DD ESCR</td><td>添加属性描述符同步</td></tr><tr><td>AT+SSAPSSTARTSE R V</td><td>start service</td></tr></table>

<table><tr><td>指令</td><td>描述</td></tr><tr><td>AT+SSAPSSNDNTFY</td><td>服务端向客户端发送通知</td></tr><tr><td>AT+SSAPSNTFYBYU UID</td><td>服务端向客户端通过 uuid 发送通知</td></tr><tr><td>AT+SSAPSSNDRESP</td><td>服务端向客户端发送响应</td></tr><tr><td>AT+SSAPSREGCBK</td><td>服务端注册回调函数</td></tr><tr><td>AT+SSAPCREGCBK</td><td>注册 SSAPC 回调函数</td></tr><tr><td>AT+SSAPCFNDSTRU</td><td>发现 service</td></tr><tr><td>AT+SSAPCWRITECMD</td><td>客户端向服务端写入数据</td></tr><tr><td>AT+SSAPCWRITEREQ</td><td>客户端向服务端发送写请求</td></tr><tr><td>AT+SSAPCEXCHINFO</td><td>客户端发起信息交换</td></tr><tr><td>AT+SSAPCREADBYU UID</td><td>客户端通过 uuid 发送读请求</td></tr><tr><td>AT+SSAPCREADREQ</td><td>客户端读取服务端属性数据</td></tr><tr><td>AT+SLESETSCANPAR</td><td>设置扫描参数</td></tr></table>

# 6.2.2 SLE AT 指令描述

# 6.2.2.1 SLE 使能

<table><tr><td>设置指令</td><td>AT+SLEENABLE</td></tr><tr><td>响应</td><td>● 成功:OK● 失败:ERROR</td></tr><tr><td>参数说明</td><td>-</td></tr><tr><td>示例</td><td>AT+SLEENABLE</td></tr><tr><td>注意</td><td>-</td></tr></table>

# 6.2.2.2 设置 SLE 广播参数

<table><tr><td>设置指令</td><td>AT+SLESETADVPAR=,,,,,,,,,,,,,,,</td></tr><tr><td>响应</td><td>成功:OK失败:ERROR</td></tr><tr><td>参数说明</td><td>:设备公开句柄,取值范围[0,0x10]:设备公开类型:最小设备公开周期,0x000020~0xffffff,单位125us:最大设备公开周期,0x000020~0xffffff,单位125us: SLE本端地址类型,取值范围:0:公有地址。6:随机地址。: SLE本端设备地址: SLE对端设备地址类型取值:0-公有地址,6-随机地址: SLE对端设备地址</td></tr><tr><td>示例</td><td>AT+SLESETADVPAR=1,3,200,200,0,000000000000,0,0000000000000</td></tr><tr><td>注意</td><td>此命令需在SLE使能AT+SLEENABLE后下发.</td></tr></table>

# 6.2.2.3 设置指令

<table><tr><td>设置指令</td><td>AT+SLESETADVDATA=,,</td></tr><tr><td>响应</td><td>成功:OK失败:ERROR</td></tr><tr><td>参数说明</td><td>:广播 handle,取值范围[0,0x10]:设备公开数据长度</td></tr><tr><td></td><td>:扫描响应数据长度:设备公开数据(hex 类型字符串,最大长度 521 个字符):扫描响应数据(hex 类型字符串,最大长度521 个字符)</td></tr><tr><td>示例</td><td>AT+SLESETADVDATA=1,10,4,aabbccddeeff11223344,1122 4455</td></tr><tr><td>注意</td><td>此命令需在 SLE 使能 AT+SLEENABLE 后下发。</td></tr></table>

# 6.2.2.4 起 SLE 广播

<table><tr><td>设置指令</td><td>AT+SLESTARTADV=</td></tr><tr><td>响应</td><td>• 成功:OK• 失败:ERROR</td></tr><tr><td>参数说明</td><td>:adv handle,取值范围[0, 0x10]</td></tr><tr><td>示例</td><td>AT+SLESTARTADV=1</td></tr><tr><td>注意</td><td>此命令需在 SLE 使能 AT+SLEENABLE 后下发</td></tr></table>

# 6.2.2.5 停 SLE 广播

<table><tr><td>设置指令</td><td>AT+SLESTOPADV=&lt;adv_handle&gt;</td></tr><tr><td>响应</td><td>●成功:OK●失败:ERROR</td></tr><tr><td>参数说明</td><td>&lt;adv_handle&gt;: adv handle</td></tr><tr><td>示例</td><td>AT+SLESTOPADV=1</td></tr><tr><td>注意</td><td>此命令需在 SLE 起广播 AT+SLESTARTADV=1 后下发</td></tr></table>

# 6.2.2.6 设置扫描参数

<table><tr><td>设置指令</td><td>AT+SLESETSCANPAR=,,,</td></tr><tr><td>响应</td><td>●成功:OK●失败:ERROR</td></tr><tr><td>参数说明</td><td>:扫描类型。0:被动扫描;1:主动扫描:扫描间隔。取值范围[0x14, 0xFFFF],单位125 μs:扫描窗口。取值范围[0x14, 0xFFFF],单位125 μs</td></tr><tr><td>示例</td><td>AT+SLESETSCANPAR=0,0x48,0x48</td></tr><tr><td>注意</td><td>此命令需在SLE起广播AT+SLESTARTSCAN前下发</td></tr></table>

# 6.2.2.7 使能扫描

<table><tr><td>设置指令</td><td>AT+SLESTARTSCAN</td></tr><tr><td>响应</td><td>● 成功:OK● 失败:ERROR</td></tr><tr><td>参数说明</td><td>-</td></tr><tr><td>示例</td><td>AT+SLESTARTSCAN</td></tr><tr><td>注意</td><td>-</td></tr></table>

# 6.2.2.8 关闭扫描

<table><tr><td>设置指令</td><td>AT+SLESTOPSCAN</td></tr><tr><td>响应</td><td>● 成功:OK● 失败:ERROR</td></tr><tr><td>参数说明</td><td>-</td></tr></table>

<table><tr><td>示例</td><td>AT+SLESTOPSCAN</td></tr><tr><td>注意</td><td>-</td></tr></table>

# 6.2.2.9 设置本端名称

<table><tr><td>设置指令</td><td>AT+SLESETNAME</td></tr><tr><td>响应</td><td>●成功:OK●失败:ERROR</td></tr><tr><td>参数说明</td><td>&lt;len&gt;:name长度&lt;name&gt;:名字</td></tr><tr><td>示例</td><td>AT+SLESETNAME=7,SDKTEST</td></tr><tr><td>注意</td><td>-</td></tr></table>

# 6.2.2.10 获取本端名称

<table><tr><td>设置指令</td><td>AT+SLEGETNAME</td></tr><tr><td>响应</td><td>● 成功:OK● 失败:ERROR</td></tr><tr><td>参数说明</td><td>-</td></tr><tr><td>示例</td><td>AT+SLEGETNAME</td></tr><tr><td>注意</td><td>-</td></tr></table>

# 6.2.2.11 设置本端地址

<table><tr><td>设置指令</td><td>AT+SLESETADDR</td></tr><tr><td>响应</td><td>• 成功:OK• 失败:ERROR</td></tr></table>

<table><tr><td>参数说明</td><td>&lt;addr_type&gt;:地址类型&lt;addr&gt;:地址</td></tr><tr><td>示例</td><td>AT+SLESETADDR=0,0x000000000001</td></tr><tr><td>注意</td><td>-</td></tr></table>

# 6.2.2.12 获取本端地址

<table><tr><td>设置指令</td><td>AT+SLEGETADDR</td></tr><tr><td>响应</td><td>● 成功:OK● 失败:ERROR</td></tr><tr><td>参数说明</td><td>-</td></tr><tr><td>示例</td><td>AT+SLEGETADDR</td></tr><tr><td>注意</td><td>-</td></tr></table>

# 6.2.2.13 建立 SLE 连接

<table><tr><td>设置指令</td><td>AT+SLECONN=,,</td></tr><tr><td>响应</td><td>连接成功后会打印[connected]字样以及对端设备地址与handle值
• 成功: OK
• 失败: ERROR</td></tr><tr><td>参数说明</td><td>&lt; sle_addr_type&gt;: SLE 设备地址类型 取值范围如下:
• 0: 公有地址;
• 6: 随机地址。
:sle 设备地址</td></tr><tr><td>示例</td><td>AT+SLECONN=0,000000000000</td></tr><tr><td>注意</td><td>-</td></tr></table>

# 6.2.2.14 星闪逻辑链路更新参数

<table><tr><td>设置指令</td><td>AT+SLECONNPARUPD=,,,</td></tr><tr><td>响应</td><td>●成功:OK●失败:ERROR</td></tr><tr><td rowspan="6">参数说明</td><td></td></tr><tr><td>:连接ID</td></tr><tr><td>:链路调度最小间隔,取值范围[0x0002, 0x32000],单位125μs</td></tr><tr><td>:链路调度最大间隔,取值范围[0x0002, 0x32000],单位125μs</td></tr><tr><td>:延迟周期,单位slot(该值表示在设置值的周期内可以不回复,为0时则表示每包都需回复)</td></tr><tr><td>:超时时间,单位10ms</td></tr><tr><td>示例</td><td>AT+SLECONNPARUPD=0,20,20,0,500</td></tr><tr><td>注意</td><td>-</td></tr></table>

# 6.2.2.15 星闪读取远端 rssi

<table><tr><td>设置指令</td><td>AT+SLEREADPEERRSSI=&lt;conn_id&gt;</td></tr><tr><td>响应</td><td>●成功:OK●失败:ERROR</td></tr><tr><td>参数说明</td><td>&lt;conn_id&gt;:连接ID</td></tr><tr><td>示例</td><td>AT+SLEREADPEERRSSI=0</td></tr><tr><td>注意</td><td>-</td></tr></table>

# 6.2.2.16 断开 SLE 连接

<table><tr><td>设置指令</td><td>AT+SLEDISCONN=,,</td></tr><tr><td>响应</td><td>●成功:OK●失败:ERROR连接成功后会打印[disconnected]字样以及对端设备地址与handle值。</td></tr><tr><td>参数说明</td><td>●&lt; sle_addr_type&gt;:SLE设备地址类型。取值范围如下:0:公有地址;6:随机地址。●:SLE设备地址。</td></tr><tr><td>示例</td><td>AT+SLEDISCONN=0,000000000000</td></tr><tr><td>注意</td><td>-</td></tr></table>

# 6.2.2.17 设置 SLE PHY

<table><tr><td>设置指令</td><td>AT+SLESETPHY=,,</td></tr><tr><td>响应</td><td>●成功:OK●失败:ERROR</td></tr><tr><td>参数说明</td><td>:连接id:tx phy值,取值如下0:1M PHY; 1:2M PHY ; 2:4MPHY; :tx phy值,取值如下0:1M PHY; 1:2M PHY ; 2:4M PHY;</td></tr><tr><td>示例</td><td>AT+SLESETPHY=0,1,1</td></tr><tr><td>注意</td><td>-</td></tr></table>

# 6.2.2.18 设置 SLE 默认连接参数

<table><tr><td rowspan="5">设置指令</td><td>AT+SLESETPHY=,,,</td></tr><tr><td>,</td></tr><tr><td>,,,</td></tr><tr><td>,,</td></tr><tr><td>,,</td></tr></table>

<table><tr><td>响应</td><td>●成功:OK●失败:ERROR</td></tr><tr><td>参数说明</td><td></td></tr></table>

# 6.2.2.19 进行加密配对

<table><tr><td>设置指令</td><td>AT+SLEPAIR=,,</td></tr><tr><td>响应</td><td>• 成功:OK• 失败:ERROR</td></tr><tr><td>参数说明</td><td>&lt; sle_addr_type&gt;: SLE 设备地址类型 取值范围如下:0: 公有地址;6: 随机地址。: SLE 设备地址</td></tr><tr><td>示例</td><td>AT+SLEPAIR=0,000000000000</td></tr><tr><td>注意</td><td>需在 sle 建立连接以后,和对端启动加密配对</td></tr></table>

# 6.2.2.20 移除加密配对

<table><tr><td>设置指令</td><td>AT+SLEUNPAIR=,,</td></tr><tr><td>响应</td><td>• 成功:OK• 失败:ERROR</td></tr><tr><td>参数说明</td><td>&lt; sle_addr_type&gt;: SLE 设备地址类型 取值范围如下:• 0:公有地址;• 6:随机地址。:SLE 设备地址</td></tr><tr><td>示例</td><td>AT+SLEUNPAIR=0,000000000000</td></tr><tr><td>注意</td><td>-</td></tr></table>

# 6.2.2.21 获取配对设备数目

<table><tr><td>设置指令</td><td>AT+SLEGETPAIREDNUM</td></tr><tr><td>响应</td><td>• 成功:OK• 失败:ERROR</td></tr><tr><td>参数说明</td><td>-</td></tr><tr><td>示例</td><td>AT+SLEGETPAIREDNUM</td></tr><tr><td>注意</td><td>-</td></tr></table>

# 6.2.2.22 获取配对设备

<table><tr><td>设置指令</td><td>AT+SLEGETPAIRDEV</td></tr><tr><td>响应</td><td>● 成功:OK● 失败:ERROR</td></tr><tr><td>参数说明</td><td>-</td></tr></table>

<table><tr><td>示例</td><td>AT+SLEGETPAIRDEV</td></tr><tr><td>注意</td><td>-</td></tr></table>

# 6.2.2.23 获取设备配对状态

<table><tr><td>设置指令</td><td>AT+SLEGETPAIRSTA=,,</td></tr><tr><td>响应</td><td>• 成功:OK
• 失败:ERROR</td></tr><tr><td>参数说明</td><td>&lt; sle_addr_type&gt;: SLE 设备地址类型 取值范围如下:
• 0:公有地址;
• 6:随机地址。
&lt;sle_addr&gt;: SLE 设备地址</td></tr><tr><td>示例</td><td>AT+SLEUNPAIR=0,000000000000</td></tr><tr><td>注意</td><td>-</td></tr></table>

# 6.2.2.24 获取绑定设备

<table><tr><td>设置指令</td><td>AT+SLEGETBONDDEV</td></tr><tr><td>响应</td><td>● 成功:OK● 失败:ERROR</td></tr><tr><td>参数说明</td><td>-</td></tr><tr><td>示例</td><td>AT+SLEGETBONDDEV</td></tr><tr><td>注意</td><td>-</td></tr></table>

# 6.2.2.25 注册服务端

<table><tr><td>设置指令</td><td>AT+SSAPSADDSRV=&lt;uuid&gt;</td></tr><tr><td>响应</td><td>●成功:OK●失败:ERROR</td></tr><tr><td>参数说明</td><td>-</td></tr><tr><td>示例</td><td>AT+SSAPSADDSRV=0x1234</td></tr><tr><td>注意</td><td>-</td></tr></table>

# 6.2.2.26 添加服务

<table><tr><td>设置指令响应</td><td>AT+ SSAPSADDSERV=,,&lt;is_primary&gt;● 成功:OK● 失败:ERROR</td></tr><tr><td>参数说明</td><td>-</td></tr><tr><td>示例</td><td>AT+SSAPSADDSERV=0x2222,1</td></tr><tr><td>注意</td><td>-</td></tr></table>

# 6.2.2.27 添加服务同步

<table><tr><td>设置指令</td><td>AT+ SSAPSSYNCADDSERV=,,&lt;is_primary&gt;</td></tr><tr><td>响应</td><td>● 成功:OK● 失败:ERROR</td></tr><tr><td>参数说明</td><td>-</td></tr><tr><td>示例</td><td>AT+ SSAPSSYNCADDSERV=0x2222,1</td></tr><tr><td>注意</td><td>-</td></tr></table>

# 6.2.2.28 添加属性

<table><tr><td>设置指令</td><td>AT+ SSAPSADDPROPERTY=,,,</td></tr><tr><td>响应</td><td>●成功:OK●失败:ERROR</td></tr><tr><td>参数说明</td><td>:服务的hadle : SSAP 特征UUID:特征权限</td></tr><tr><td></td><td>: 操作指示: 响应的数据长度: 响应的数据</td></tr><tr><td>示例</td><td>AT+SSAPSADDPROPERTY=1,0x2323,5,5,2,0x1234</td></tr><tr><td>注意</td><td>-</td></tr></table>

# 6.2.2.29 添加属性同步

<table><tr><td>设置指令</td><td>AT+SSAPSSYNCADDPROPERTY=,,</td></tr><tr><td>响应</td><td>成功:OK失败:ERROR</td></tr><tr><td>参数说明</td><td>:服务的hadle:SSAP 特征UUID:特征权限:操作指示:响应的数据长度:响应的数据</td></tr><tr><td>示例</td><td>AT+SSAPSSYNCADDPROPERTY=1,0x2323,5,5,2,0x1234</td></tr><tr><td>注意</td><td>-</td></tr></table>

# 6.2.2.30 添加属性描述符

<table><tr><td>设置指令</td><td>AT+SSAPSADDDESCR=,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,</td></tr></table>

<table><tr><td></td><td>ue&gt;</td></tr><tr><td>响应</td><td>●成功:OK●失败:ERROR</td></tr><tr><td>参数说明</td><td></td></tr></table>

# 6.2.2.31 添加属性描述符同步

<table><tr><td>设置指令</td><td>AT+SSAPSSYNCADDDESCR=,,,,,,,,,,,</td></tr><tr><td>响应</td><td>●成功:OK●失败:ERROR</td></tr><tr><td>参数说明</td><td></td></tr></table>

<table><tr><td>注意</td><td>-</td></tr></table>

# 6.2.2.32 服务端向客户端发送通知

<table><tr><td>设置指令</td><td>AT+SSAPSSNDNTFY=,,,,,</td></tr><tr><td>响应</td><td>● 成功:OK● 失败:ERROR</td></tr><tr><td>参数说明</td><td>: 服务handle : 属性 handle :SSAP 特征类型 • 0: 特征值;• 1: 属性说明描述符• 2: 客户端配置描述符• 3: 服务端配置描述符• 4: 格式描述符• 5: 服务管理保留描述符, 0x05-0x1F• 0xFF: 厂商自定义描述符: 数据长度: 数据</td></tr><tr><td>示例</td><td>AT+SSAPSSNDNTFY=0,0,0,0x0200</td></tr><tr><td>注意</td><td>-</td></tr></table>

# 6.2.2.33 服务端向客户端通过 uuid 发送通知

<table><tr><td>设置指令</td><td>AT+SSAPSNTFYBYUUID=,,,,,,,,,,,</td></tr><tr><td>响应</td><td>●成功:OK●失败:ERROR</td></tr><tr><td>参数说明</td><td>:服务 handle</td></tr><tr><td></td><td>: 属性 uuid: 开始句柄: 结束句柄: SSAP 特征类型0: 特征值1: 属性说明描述符2: 客户端配置描述符3: 服务端配置描述符4: 格式描述符5: 服务管理保留描述符, 0x05-0x1F0xFF: 厂商自定义描述符: 数据长度: 数据</td></tr><tr><td>示例</td><td>AT+SSAPSNTFYBYUUID=0,0x1234,0,0xFFFF,0,0x0200</td></tr><tr><td>注意</td><td>-</td></tr></table>

# 6.2.2.34 服务端发送响应

<table><tr><td>设置指令</td><td>AT+SSAPSSNDRESP=,,,</td></tr><tr><td>响应</td><td>●成功:OK●失败:ERROR</td></tr><tr><td>参数说明</td><td>: 服务handle:请求 id:发送响应原因:数据长度:数据</td></tr><tr><td>示例</td><td>AT+SSAPSSNDRESP=0,0,0,2,0x0200</td></tr><tr><td>注意</td><td>-</td></tr></table>

# 6.2.2.35 服务端注册回调

<table><tr><td>设置指令</td><td>AT+SSAPSREGCBK</td></tr><tr><td>响应</td><td>● 成功:OK● 失败:ERROR</td></tr><tr><td>参数说明</td><td>-</td></tr><tr><td>示例</td><td>AT+SSAPSREGCBK</td></tr><tr><td>注意</td><td>-</td></tr></table>

# 6.2.2.36 start service

<table><tr><td>设置指令</td><td>AT+SSAPSSTARTSERV=</td></tr><tr><td>响应</td><td>● 成功: OK● 失败: ERROR</td></tr><tr><td>参数说明</td><td>&lt;service_handle&gt;: 服务 handle</td></tr><tr><td>示例</td><td>AT+SSAPSSTARTSERV=1</td></tr><tr><td>注意</td><td>-</td></tr></table>

# 6.2.2.37 注册 SSAPC 回调函数

<table><tr><td>设置指令</td><td>AT+SSAPCREGCBK</td></tr><tr><td>响应</td><td>● 成功:OK● 失败:ERROR</td></tr><tr><td>参数说明</td><td>-</td></tr><tr><td>示例</td><td>AT+SSAPCREGCBK</td></tr><tr><td>注意</td><td>-</td></tr></table>

# 6.2.2.38 发现 service

<table><tr><td>设置指令</td><td>AT+SSAPCFNDSTRU=,,,,,,,,,,,,</td></tr><tr><td>响应</td><td>●成功:OK●失败:ERROR</td></tr><tr><td>参数说明</td><td>:客户端 id:连接 id:查找类型,取值如下:●0:服务结构●1:首要服务●3:属性</td></tr><tr><td>示例</td><td>AT+SSAPCFNDSTRU=0,0,1,0x1234,0,0xff</td></tr><tr><td>注意</td><td>-</td></tr></table>

# 6.2.2.39 客户端向服务端写入数据

<table><tr><td>设置指令</td><td>AT+SSAPCWRITECMD=,,,</td></tr><tr><td>响应</td><td>●成功:OK●失败:ERROR</td></tr><tr><td>参数说明</td><td>:客户端id:连接id:连接handle:客户端类型,取值:0/1/3:写入数据长度:写入数据段</td></tr><tr><td>示例</td><td>AT+SSAPCWRITECMD=0,0,2,0,2,0x8899</td></tr><tr><td>注意</td><td>-</td></tr></table>

# 6.2.2.40 客户端向服务端发送写请求

<table><tr><td>设置指令</td><td>AT+SSAPCWRITEREQ=,,,,,</td></tr><tr><td>响应</td><td>●成功:OK●失败:ERROR</td></tr><tr><td rowspan="2">参数说明</td><td></td></tr><tr><td>: 客户端 id: 连接 id: 连接 handle: 客户端类型,取值:0/1/3: 写入数据长度: 写入数据段</td></tr><tr><td>示例</td><td>AT+SSAPCWRITEREQ=0,0,2,0,2,0x8899</td></tr><tr><td>注意</td><td>-</td></tr></table>

# 6.2.2.41 客户端发起信息交换

<table><tr><td>设置指令</td><td>AT+SSAPCEXCHINFO=,,,</td></tr><tr><td>响应</td><td>●成功:OK●失败:ERROR</td></tr><tr><td>参数说明</td><td>:客户端 id:连接 id:ssap 通道mtu:版本号</td></tr><tr><td>示例</td><td>AT+SSAPCEXCHINFO=0,0,251,1</td></tr><tr><td>注意</td><td>-</td></tr></table>

# 6.2.2.42 客户端通过 uuid 发送读请求

<table><tr><td>设置指令</td><td>AT+SSAPCREADBYUUID=,,</td></tr><tr><td></td><td>,,</td></tr><tr><td>响应</td><td>●成功:OK●失败:ERROR</td></tr><tr><td>参数说明</td><td>:客户端id:连接id:连接handle:客户端类型,取值:0/1/3:开始handle:结束handle</td></tr><tr><td>示例</td><td>AT+SSAPCREADBYUUID=0,0,0x1234,0,0,0xFFFF</td></tr><tr><td>注意</td><td>-</td></tr></table>

# 6.2.2.43 客户端读取服务端属性数据

<table><tr><td>设置指令</td><td>AT+SSAPCREADREQ=,,,</td></tr><tr><td>响应</td><td>●成功:OK●失败:ERROR</td></tr><tr><td>参数说明</td><td>:客户端 id(预留参数):连接 id:连接 handle(连接成功后的回调里会打印):客户端类型,取值:0/1/3</td></tr><tr><td>示例</td><td>AT+SSAPCREADREQ=0,0,2,0</td></tr><tr><td>注意</td><td>读数据时的 handle 需与写入数据时的 handle 一致</td></tr></table>


表3-1 设备外观值一览表


<table><tr><td>设备外观</td><td>值</td><td>说明</td></tr><tr><td>BLE_APPEARANCE_UNKNOWN</td><td>0</td><td>None</td></tr><tr><td>BLE_APPEARANCE_GENERIC_PHONE</td><td>64</td><td>Generic category</td></tr><tr><td>BLE_APPEARANCE_GENERIC_COMPUTER</td><td>128</td><td>Generic category</td></tr><tr><td>BLE_APPEARANCE_GENERIC_WATCH</td><td>192</td><td>Generic category</td></tr><tr><td>BLE_APPEARANCE_WATCH_SPORTS_WAT C H</td><td>193</td><td>Watch subtype</td></tr><tr><td>BLE_APPEARANCE_GENERIC_CLOCK</td><td>256</td><td>Generic category</td></tr><tr><td>BLE_APPEARANCE_GENERIC_DISPLAY</td><td>320</td><td>Generic category</td></tr><tr><td>BLE_APPEARANCE_GENERIC_REMOTE_CON TROL</td><td>384</td><td>Generic category</td></tr><tr><td>BLE_APPEARANCE_GENERIC_EYE_GLASSES</td><td>448</td><td>Generic category</td></tr><tr><td>BLE_APPEARANCE_GENERIC_TAG</td><td>512</td><td>Generic category</td></tr><tr><td>BLE_APPEARANCE_GENERIC_KEYRING</td><td>576</td><td>Generic category</td></tr><tr><td>BLE_APPEARANCE_GENERIC_MEDIA_PLAY E R</td><td>640</td><td>Generic category</td></tr><tr><td>BLE_APPEARANCE_GENERIC_BARCODE_SCANNER</td><td>704</td><td>Generic category</td></tr><tr><td>BLE_APPEARANCE_GENERIC_THERMOMET E R</td><td>768</td><td>Generic category</td></tr><tr><td>BLE_APPEARANCE_THERMOMETER_EAR</td><td>769</td><td>Thermometer subtype</td></tr><tr><td>BLE_APPEARANCE_GENERIC_HEART_RATE_SENSOR</td><td>832</td><td>Generic category</td></tr><tr><td>BLE_APPEARANCE_HEART_RATE_SENSOR_HEART_RATE_BELT</td><td>833</td><td>Heart Rate Sensor subtype</td></tr><tr><td>BLE_APPEARANCE_GENERIC_BLOOD_PRESSURE</td><td>896</td><td>Generic category</td></tr><tr><td>BLE_APPEARANCE_BLOOD_PRESSURE_ARM</td><td>897</td><td>Blood Pressure subtype</td></tr><tr><td>BLE_APPEARANCE_BLOOD_PRESSURE_WRI ST</td><td>898</td><td>Blood Pressure subtype</td></tr><tr><td>BLE_APPEARANCE_HUMAN_INTERFACE_D E VICE_HID</td><td>960</td><td>HID Generic</td></tr><tr><td>BLE_APPEARANCE_KEYBOARD</td><td>961</td><td>HID subtype</td></tr></table>

<table><tr><td>设备外观</td><td>值</td><td>说明</td></tr><tr><td>BLE_APPEARANCE_MOUSE</td><td>962</td><td>HID subtype</td></tr><tr><td>BLE_APPEARANCE_JOYSTICK</td><td>963</td><td>HID subtype</td></tr><tr><td>BLE_APPEARANCE_GAMEPAD</td><td>964</td><td>HID subtype</td></tr><tr><td>BLE_APPEARANCE_DIGITIZER_TABLET</td><td>965</td><td>HID subtype</td></tr><tr><td>BLE_APPEARANCE_CARD_READER</td><td>966</td><td>HID subtype</td></tr><tr><td>BLE_APPEARANCE_DIGITAL_PEN</td><td>967</td><td>HID subtype</td></tr><tr><td>BLE_APPEARANCE_BARCODE_SCANNER</td><td>968</td><td>HID subtype</td></tr><tr><td>BLE_APPEARANCE_GENERIC_GLUCOSE_METER</td><td>1024</td><td>Generic category</td></tr><tr><td>BLE_APPEARANCE_GENERIC_RUNNING_WALKING_SENSOR</td><td>1088</td><td>Generic category</td></tr><tr><td>BLE_APPEARANCE_RUNNING_WALKING_SENSOR_IN_SHOE</td><td>1089</td><td>Running Walking Sensor subtype</td></tr><tr><td>BLE_APPEARANCE_RUNNING_WALKING_SENSOR_ON_SHOE</td><td>1090</td><td>Running Walking Sensor subtype</td></tr><tr><td>BLE_APPEARANCE_RUNNING_WALKING_SENSOR_ON_HIP</td><td>1091</td><td>Running Walking Sensor subtype</td></tr><tr><td>BLE_APPEARANCE_GENERIC_CYCLING</td><td>1152</td><td>Generic category</td></tr><tr><td>BLE_APPEARANCE_CYCLING_CYCLING_COMPUTER</td><td>1153</td><td>Cycling subtype</td></tr><tr><td>BLE_APPEARANCE_CYCLING_SPEED_SENS OR</td><td>1154</td><td>Cycling subtype</td></tr><tr><td>BLE_APPEARANCE_CYCLING_CADENCE_SENSOR</td><td>1155</td><td>Cycling subtype</td></tr><tr><td>BLE_APPEARANCE_CYCLING_POWER_SENSOR</td><td>1156</td><td>Cycling subtype</td></tr><tr><td>BLE_APPEARANCE_CYCLING_SPEED_AND_CADENCE_SENSOR</td><td>1157</td><td>Cycling subtype</td></tr><tr><td>BLE_APPEARANCE_INVALID</td><td>65536</td><td>out of uint16_t</td></tr></table>

# 7 指令说明

# 7.1 设置雷达状态

<table><tr><td>设置指令</td><td>AT+ RADARSETST=</td></tr><tr><td>响应</td><td>●成功:OK●失败:ERROR</td></tr><tr><td>参数说明</td><td>status&gt;:雷达状态。0:stop1:start2:reset3:●resume4:iso-cali</td></tr><tr><td>示例</td><td>AT+ RADARSETST=1 启动雷达, AT+ RADARSETST=0 停止雷达。</td></tr><tr><td>注意</td><td>启动雷达之前,需启动 STA 或 SoftAp,STA 处于关联或断开连接状态均可使用。默认当感知模块 1 米范围内检测到目标时,感知指示灯亮。</td></tr></table>

# 7.2 查询雷达状态

<table><tr><td>设置指令</td><td>AT+RADARGETST</td></tr><tr><td>响应</td><td>• 成功:OK• 失败:ERROR</td></tr><tr><td>参数说明</td><td>-</td></tr><tr><td>示例</td><td>AT+RADARGETST</td></tr><tr><td>注意</td><td>·返回雷达当前状态:0: idle;1: running。·执行 AT+RADARSETST=1 命令后,查询状态应为 1,否则雷达功能异常。</td></tr></table>


第111页共119页


# 7.3 设置雷达退出延时

<table><tr><td>设置指令</td><td>AT+ RADARSETDLY=</td></tr><tr><td>响应</td><td>● 成功:OK● 失败:ERROR</td></tr><tr><td>参数说明</td><td>:dly_time&gt;:雷达有目标到无目标状态退出时间:范围:1~43200,单位:s。</td></tr><tr><td>示例</td><td>AT+RADARSETDLY=20 设置雷达有目标到无目标状态退出时间为20s。</td></tr><tr><td>注意</td><td>从有目标状态切换到无目标状态后,感知指示灯灭。</td></tr></table>

# 7.4 查询雷达退出延时

<table><tr><td>设置指令</td><td>AT+RADARGETDLY</td></tr><tr><td>响应</td><td>● 成功:OK● 失败:ERROR</td></tr><tr><td>参数说明</td><td>-</td></tr><tr><td>示例</td><td>AT+RADARGETDLY</td></tr><tr><td>注意</td><td>返回雷达当前有目标到无目标状态退出时间。</td></tr></table>

# 7.5 查询雷达天线隔离度信息

<table><tr><td>设置指令</td><td>AT+RADARGETISO</td></tr><tr><td>响应</td><td>● 成功:OK● 失败:ERROR</td></tr><tr><td>参数说明</td><td>-</td></tr><tr><td>示例</td><td>AT+RADARGETISO</td></tr><tr><td>注意</td><td>返回雷达当前所使用信道条件下的天线隔离度信息。</td></tr></table>

# 8 开发板操作示例

# 8.1 硬件配置

(1) 通过 USB 线将两块开发板与电脑连接，LED灯亮并在电脑端检测到两个串口说明开发板连接正常。

(2) 配置串口工具波特率为115200、8个数据位、1个停止位、无校验、无流量控制。

# 8.2 软件配置

(1) 使用串口工具发送AT指令，发送字符串 “AT”，需注意勾选回车换行，测试返回如图，说明AT指令通行正常。

![image](https://cdn-mineru.openxlab.org.cn/result/2026-05-09/41b2e134-a4ae-487c-8d03-90a23f0522f1/bd96e8f625d897dfb3521fb97578f4364bbfbf4d4124b5eceb7da06f3d913e21.jpg)


# 8.3 sle连接并发送数据操作示例

# 8.3.1 配置服务端，启动广播

(1) 选择一块开发板作为服务端，使用串口工具发送使能SLE指令(AT+SLEENABLE\n)，返回值为OK,说明AT通信正常。

```txt
[16:17:47.020]发→◇AT+SLEENABLE
[16:17:47.024]收←◆AT+SLEENABLE
[ACore] sle enable cbk in, result:0
sle enable
OK
```

发送注册服务端指令（AT+SSAPSADDSRV=0x1234\n），返回值为OK,说明AT通信正常。

```txt
[16:26:27.937]发→◇AT+SSAPSADDSRV=0x1234
[16:26:27.940]收←◆AT+SSAPSADDSRV=0x1234
ssaps register server handle (1).
OK
```

(3) 发送添加服务指令（AT+SSAPSADDSERV=0x2222,1\n），返回值为OK,说明AT通信正常。

```txt
[16:30:42.717]发→◇AT+SSAPSADDSERV=0x2222,1
[16:30:42.722]收←◆AT+SSAPSADDSERV=0x2222,1
ssaps add_service ret (0).
OK
```

(4) 发送添加属性指令（AT+SSAPSADDPROPERTY=1,0x2323,5,5,2,0x1234\n），返回值为OK，说明AT通信正常。

```txt
[16:33:24.284]发→◇AT+SSAPSADDPROPERTY=1,0x2323,5,5,2,0x1234
[16:33:24.288]收←◆AT+SSAPSADDPROPERTY=1,0x2323,5,5,2,0x1234
ssaps add property ret (0).
JK
```

(5) 发送添加属性描述符指令

(AT+SSAPSADDDESCR=1,2,0x3333,5,5,2,2,0x0200\n)，返回值为OK,说明AT通信正常。

```txt
[16:36:26.320]发→◇AT+SSAPSADDDESCR=1,2,0x3333,5,5,2,2,0x0200
[16:36:26.324]收←◆AT+SSAPSADDDESCR=1,2,0x3333,5,5,2,2,0x0200
ssaps add descriptor ret (0).
OK
```

(6) 发送注册SSAPS回调函数指令（AT+SSAPSREGCBK\n），返回值为OK,说明AT通信正常。

```txt
[17:08:26.930]发→◇AT+SSAPSREGCBK
□
[17:08:26.934]收←◆AT+SSAPSREGCBK
[AT] ssaps register cbks.
OK
```

(7) 发送开启服务指令（AT+SSAPSSTARTSERV=1\n），返回值为OK,说明AT通

信正常。

```ini
[16:38:50.583]发→◇AT+SSAPSSTARTSERV=1
[16:38:50.587]收←◆AT+SSAPSSTARTSERV=1
ssaps start_service handle:1, ret:0.
OK
```

(8) 发送配置广播参数指令

(AT+SLESETADVPAR=1,3,200,200,0,0x112233445588,0,0x112233445588\n)，返回值为OK,说明AT通信正常。

```txt
[16:40:00.341]发→◇AT+SLESETADVPAR=1,3,200,200,0,0x112233445588,0,0x112233445588
[16:40:00.345]收←◆AT+SLESETADVPAR=1,3,200,200,0,0x112233445588,0,0x112233445588
[ACore] sle set announce param, handle:1, mode:3, min_interval:c8, max_interval:c8, tx_power: 0
[ACore] sle set announce param, own addr:0x11:**:**:**:55:88
[ACore] sle set announce param, peer addr:0x11:**:**:**:55:88
OK
```

(9) 发送配置广播数据指令

(AT+SLESETADVDATA=1,10,4,aabbccddeeff11223344,11 224455\n)，返回值为OK,说明AT通信正常。

```txt
[16:41:11.653]发→◇AT+SLESETADVDATA=1,10,4,aabbccddeeff11223344,11224455
□
[16:41:11.657]收←◆AT+SLESETADVDATA=1,10,4,aabbccddeeff11223344,11224455
OK
```

(10) 发送开始广播指令（AT+SLESTARTADV=1\n），返回值为OK,说明AT通信正常。

```txt
[16:42:45.387]发→◇AT+SLESTARTADV=1
[16:42:45.391]收←◆AT+SLESTARTADV=1
[ACore] sle start announce in, adv_id:1
OK
[ACore] sle adv cbk in, event:0 status:0
[ACore] sle adv cbk in, event:1 status:0
[ACore] sle adv cbk in, event:2 status:0
[ACore] sle adv cbk in, event:3 status:0
```

# 8.3.2 配置客户端，启动扫描

(1) 选择一块开发板作为客户端，使用串口工具发送使能SLE指令

(AT+SLEENABLE\n)，返回值为OK,说明AT通信正常。

(2) 发送注册SSAPC回调函数指令（AT+SSAPCREGCBK\n），返回值为OK,说明

AT通信正常。

```vtt
[16:47:52.509]发→◇AT+SSAPCREGCBK
[16:47:52.513]收←◆AT+SSAPCREGCBK
[ssap client] client register cbk OK
```

(3) 发送建立SLE连接指令（AT+SLECONN=0,112233445588\n），返回值为OK，说明AT通信正常。

```ini
[16:54:10.968]收←◆AT+SLECONN=0,112233445588
OK
[Connected]
addr:11:**:**:**:55:88, handle:00
```

# 9.3.3 服务端与客户端通信

(1) 服务端向客户端发送通知（AT+SSAPSSNDNTFY=0,1,0,2,0xAA55\n），服务端返回值为OK,客户端打印出服务端发送的数据，说明AT通信正常。

```txt
[16:59:39.076]发→◇AT+SSAPSSNDNTFY=0,1,0,2,0xAA55
[16:59:39.081]收←◆AT+SSAPSSNDNTFY=0,1,0,2,0xAA55
update ssap send report handle: pre handle:ffff, current:0
ssaps notify indicate ret:0.
OK
```

```txt
[16:59:39.094]收←◆[ssap client] notification info cbk client 0, handle:1, type:0, status:0
aa 55
```

(2) 客户端向服务端发送通知（AT+SSAPCWRITECMD=0,0,2,0,2,0x8899\n），客户端返回值为OK，服务端打印出客户端发送的数据，说明AT通信正常。

```txt
[17:08:30.280]发→◇AT+SSAPCWRITECMD=0,0,2,0,2,0x8899
[17:08:30.283]收←◆AT+SSAPCWRITECMD=0,0,2,0,2,0x8899
OK
```

```txt
[17:08:30.295]收←◆[AT] ssaps write request cb server_id(1) conn id(0) handle(2) status(0).
[AT] ssaps write request cb request_id(0) type(0) need_rsp(0) need_authorize(0).
[AT] ssaps write request cb data len(2).
data
88 99
```

# 8.4 ble连接并发送数据操作示例

# 8.4.1 配置服务端

选择一块开发板作为服务端，依次发送以下指令，串口返回OK说明配置成功，串口返回ERROR说明配置失败。

(1) AT+BLEENABLE\n 

(2) AT+BLESETADDR=0,0x112233445566\n 

(3) AT+GATTSREGCBK\n 

(4) AT+GATTSREGSRV=0x1122\n 

(5) AT+GATTSSYNCADDSERV=1,0x1122,1\n 

(6) AT+GATTSSYNCADDCHAR=1,14,0x2a4a,0x03,0,1,0x01\n 

(7) AT+GATTSSYNCADDDESCR=1,14,0x2a4a,0x03,1,0x02\n 

(8) AT+GATTSSTARTSERV=1,14\n 

(9) AT+BLESETADVDATA=6,0x112233445566,0,0,1\n 

(10) 

$$
\mathrm{AT} + \text { BLESETADVPAR } = 4 8, 4 8, 0, 0 \times 0 0 0 0 0 0 0 0 0 0 0 0, 0, 0 \times 0 0 0 0 0 0 0 0 0 0 0 0, 7, 0, 1, 0, 1 \backslash n
$$

(11) AT+BLESTARTADV=1\n 

# 8.4.2 配置客户端

选择一块开发板作为客户端，依次发送以下指令，串口返回OK说明配置成功，串口返回ERROR说明配置失败。

(1) AT+BLEENABLE\n 

(2) AT+BLESETADDR=0,0x112233445577\n 

(3) AT+GATTCREGCBK\n 

(4) AT+GATTCREG=0x3434\n 

(5) AT+BLESETSCANPAR=0x48,0x48,0,1,0\n 

(6) AT+BLECONN=0,0x112233445566\n 

(7) AT+BLEPAIR=0,0x112233445566\n 

(8) AT+BLEGETPAIREDDEV\n 

(9) AT+GATTCFNDSERV=1,0,0x1122\n 

# 8.4.3 客户端向服务端发送消息

客户端发送AT+GATTCWRITEREQ=1,0,17,1,0x11\n指令，服务端打印客户端发送内容说明收发正常。

[14:31:21.308]发→◇AT+GATTCWRITEREQ=1,0,17,1,0x11

□ 

[14:31:21.313]收←◆AT+GATTCWRITEREQ=1,0,17,1,0x11

[14:31:21.404]收←◆[GATTClient]Write result——client:1 conn_id:0 handle:17 status:0
OK

```txt
[14:31:21.355]收←◆[GATTServer]WriteReqReceiveCallback—server_id:1 conn_id:0 request_id:6 handle:17 offset:0 need_authorize:0 need_rsp:1 is_prep:0 data_len:1 data:
11
status:0
```

# 8.4.4 服务端向客户端发送消息

服务端发送AT+GATTSSNDNTFY=1,0,14,1,0x11\n指令，客户端发送

AT+GATTCREADBYHDL=1,0,14\n指令，客户端打印服务端发送内容说明收发正常。

```txt
[14:34:29.191]发→◇AT+GATTSSNDNTFY=1,0,14,1,0x11
```

```txt
□ 
```

```txt
[14:34:29.196]收←◆AT+GATTSSNDNTFY=1,0,14,1,0x11
```

```txt
OK 
```

```html
[14:34:45.611]发→◇AT+GATTCREADBYHDL=1,0,14
```

```txt
□ 
```

```html
[14:34:45.616]收←◆AT+GATTCREADBYHDL=1,0,14
```

```txt
OK 
```

```objectivec
[14:34:45.710]收←◆[GATTClient]Read result——client:1 conn_id:0
```

```txt
handle:14 data_len:1 
```

```txt
data:11 
```

```txt
status:0 
```