# More on Networking 
This document help to undersand basic **Network Configuration** for a machine and general networking.

---

## `ifconfig` - IP address

To check your own IP address. 

    ifconfig

In the example below: 
* LAN Ethernet IP is: 192.168.0.11
* Mac Address is: 00:16:35:69:BD:79

Example Output: 

    $ ifconfig
    eth0      Link encap:Ethernet  HWaddr 00:16:35:69:BD:79
            inet addr:192.168.0.11  Bcast:192.168.0.255  Mask:255.255.255.0
            inet6 addr: fe80::212:ff35:fe69:bd12/64 Scope:Link
            UP BROADCAST RUNNING MULTICAST  MTU:1500  Metric:1
            RX packets:16791460 errors:0 dropped:0 overruns:0 frame:0
            TX packets:30066639 errors:0 dropped:0 overruns:0 carrier:0
            collisions:0 txqueuelen:1000
            RX bytes:2182259898 (2.0 GiB)  TX bytes:3951206845 (3.6 GiB)
            Interrupt:209 Memory:fdef0000-fdf00000

    lo        Link encap:Local Loopback
            inet addr:127.0.0.1  Mask:255.0.0.0
            inet6 addr: ::1/128 Scope:Host
            UP LOOPBACK RUNNING  MTU:16436  Metric:1
            RX packets:32098 errors:0 dropped:0 overruns:0 frame:0
            TX packets:32098 errors:0 dropped:0 overruns:0 carrier:0
            collisions:0 txqueuelen:0
            RX bytes:3227365 (3.0 MiB)  TX bytes:3227365 (3.0 MiB)

## `ping` - Check network Access

    ping [HOST or IP-ADDRESS or WEBSITE]


## `netstat` - Network Activity

    netstat -r

Example Output: 

    $ netstat -r
    Kernel IP routing table
    Destination     Gateway         Genmask         Flags   MSS Window  irtt Iface
    192.168.0.0     *               255.255.255.0   U         0 0          0 eth0
    169.254.0.0     *               255.255.0.0     U         0 0          0 eth0
    10.1.0.0	192.168.0.2	255.255.0.0     U         0 0          0 eth0
    default         192.168.0.1     0.0.0.0         UG        0 0          0 eth0

Other usage 

    $ netstat -a | grep LISTEN | grep -v LISTENING
    tcp        0      0 localhost.localdomain:32000 *:*                 LISTEN
    tcp        0      0 localhost.locald:bootserver *:*                 LISTEN
    tcp        0      0 *:cbt                       *:*                 LISTEN
    tcp        0      0 *:38821                     *:*                 LISTEN
    tcp        0      0 *:8009                      *:*                 LISTEN

    $ netstat -an | more
    Active Internet connections (servers and established)
    Proto Recv-Q Send-Q Local Address             Foreign Address         State
    tcp        0      0 127.0.0.1:32000           0.0.0.0:*               LISTEN
    tcp        0      0 127.0.0.1:2016            0.0.0.0:*               LISTEN
    tcp        0      0 0.0.0.0:7777              0.0.0.0:*               LISTEN
    tcp        0      0 0.0.0.0:38821             0.0.0.0:*               LISTEN



## traceroute - Trace server routes to remote host
This command will display the route taken to reach the remote host and, along with the stops it makes, provide some timing information that shows how long each leg in the route is taking.

    traceroute [HOSTNAME or SERVER or WEBSITE]

Example output: 

    $ traceroute www.google.com
    traceroute to www.google.com (216.58.219.4), 30 hops max, 60 byte packets
    1  testwifi.here (192.168.86.1)  0.588 ms  1.110 ms  0.725 ms
    2  96.120.88.245 (96.120.88.245)  9.233 ms  14.729 ms  15.564 ms
    3  be-20002-rur02.santaclara.ca.sfba.comcast.net (68.85.103.169)  16.102 ms  16.221 ms  15.741 ms
    4  162.151.78.129 (162.151.78.129)  15.626 ms  15.836 ms  15.772 ms
    5  be-232-rar01.santaclara.ca.sfba.comcast.net (162.151.78.253)  16.099 ms * *
    6  be-299-ar01.santaclara.ca.sfba.comcast.net (68.86.143.93)  15.896 ms  13.372 ms  13.345 ms
    7  96.112.146.18 (96.112.146.18)  13.998 ms 96.112.146.26 (96.112.146.26)  11.898 ms  11.132 ms
    8  * * *
    9  108.170.236.62 (108.170.236.62)  19.286 ms 209.85.251.4 (209.85.251.4)  17.231 ms 108.170.236.60 (108.170.236.60)  16.081 ms
    10  108.170.242.254 (108.170.242.254)  18.317 ms 108.170.242.238 (108.170.242.238)  17.908 ms 108.170.242.253 (108.170.242.253)  17.933 ms
    11  216.239.62.41 (216.239.62.41)  18.089 ms 72.14.237.147 (72.14.237.147)  18.223 ms 66.249.94.29 (66.249.94.29)  18.394 ms
    12  66.249.95.15 (66.249.95.15)  23.803 ms 216.239.54.22 (216.239.54.22)  21.822 ms 64.233.174.206 (64.233.174.206)  36.001 ms
    13  108.170.234.40 (108.170.234.40)  22.110 ms 108.170.230.134 (108.170.230.134)  22.006 ms  21.297 ms
    14  108.170.247.193 (108.170.247.193)  22.033 ms  21.847 ms 108.170.247.225 (108.170.247.225)  19.486 ms
    15  108.170.237.143 (108.170.237.143)  20.839 ms  19.894 ms  17.991 ms
    16  lax17s03-in-f4.1e100.net (216.58.219.4)  17.176 ms  17.725 ms  24.966 ms


