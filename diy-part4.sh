#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part3.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
sed -i 's/192.168.1.1/192.168.5.1/g' package/base-files/files/bin/config_generate

# Modify default PassWord
# sed -i 's/root::0:0:99999:7:::/root:$1$ScQIGKsX$q0qEf\/tAQ2wpTR6zIUIjo.:0:0:99999:7:::/g' package/base-files/files/etc/shadow

sed -i '7{s/$/ R20.7.1 | by woodfree/}' ./package/base-files/files/etc/banner
sed -i "s/DISTRIB_REVISION='R20.7.1'/DISTRIB_REVISION='R20.7.1 | by woodfree'/g" ./package/lean/default-settings/files/zzz-default-settings
