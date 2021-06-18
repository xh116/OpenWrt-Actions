# OpenWrt Firmware Build
[![OpenWrt-CI](https://github.com/xh116/OpenWrt-Actions/actions/workflows/OpenWrt.yml/badge.svg)](https://github.com/xh116/OpenWrt-Actions/actions/workflows/OpenWrt.yml)
[![ImmortalWrt-CI](https://github.com/xh116/OpenWrt-Actions/actions/workflows/ImmortalWrt.yml/badge.svg)](https://github.com/xh116/OpenWrt-Actions/actions/workflows/ImmortalWrt.yml)


Thanks @coolsnowwolf @P3TERX @KFERMercer @82kg

This actions will build firmware with only ssrp.

![image](https://raw.githubusercontent.com/xh116/OpenWrt-Actions/master/screenshot.png)


# Running In Docker 

``docker network create -d macvlan --subnet=10.0.0.0/24 --gateway=10.0.0.1 --aux-address="exclude_host=10.0.0.123" --ip-range=10.0.0.222/28  -o parent=eth0 macvlan01``


```docker run -d --name=openwrt --privileged \  

-v /home/rancher/docker/openwrt/shadowsocksr:/etc/config/shadowsocksr \  

-v /home/rancher/docker/openwrt/network:/etc/config/network \  

-v /home/rancher/docker/openwrt/shadow:/etc/shadow  /sbin/init \  

--restart=always \  

--network=macvlan01 \  

--ip=10.0.0.200 \  

xh116/openwrt 

