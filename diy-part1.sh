
#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
# sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
# sed -i '$a src-git kenzo https://github.com/kenzok8/openwrt-packages' feeds.conf.default
# sed -i '$a src-git small https://github.com/V2RaySSR/small' feeds.conf.default
#应用过滤插件
#git clone https://github.com/destan19/OpenAppFilter package/OpenAppFilter
#KoolProxyR去广告插件
#git clone https://github.com/jefferymvp/luci-app-koolproxyR package/luci-app-koolproxyR
#微信推送插件
#git clone https://github.com/tty228/luci-app-serverchan package/luci-app-serverchan
#京东签到插件及其node-request依赖
#git clone https://github.com/jerrykuku/node-request  package/node-request 
#git clone https://github.com/jerrykuku/luci-app-jd-dailybonus package/luci-app-jd-dailybonus
# SmartDNS插件
#git clone https://github.com/pymumu/openwrt-smartdns package/openwrt-smartdns
#git clone -b lede https://github.com/pymumu/luci-app-smartdns package/luci-app-smartdns



# Add a feed source
# sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
# sed -i '$a src-git jerryk https://github.com/jerrykuku/openwrt-package' feeds.conf.default
sed -i '$a src-git diy https://github.com/firker/diy-ziyong' feeds.conf.default
sed -i '$a src-git passwall https://github.com/xiaorouji/openwrt-passwall' feeds.conf.default

# mv -vf ../mt7621_phicomm_k2p.dts ./target/linux/ramips/dts/mt7621_phicomm_k2p.dts
#　git clone https://github.com/vernesong/OpenClash.git package/OpenClash
git clone -b master https://github.com/vernesong/OpenClash.git package/OpenClash
git clone -b 18.06 https://github.com/garypang13/luci-theme-edge.git package/luci-theme-edge
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/luci-theme-argon
git clone https://github.com/sirpdboy/luci-theme-opentopd.git package/luci-theme-opentopd
git clone https://github.com/jerrykuku/luci-app-argon-config.git package/luci-app-argon-config
git clone https://github.com/tty228/luci-app-serverchan.git package/luci-app-serverchan
git clone https://github.com/jerrykuku/luci-app-jd-dailybonus.git package/luci-app-jd-dailybonus
git clone https://github.com/jerrykuku/luci-app-vssr.git  package/luci-app-vssr
git clone https://github.com/ledewrt/luci-app-ledeproxy.git package/luci-app-ledeproxy
git clone https://github.com/garypang13/luci-app-bypass.git package/luci-app-bypass
git clone https://github.com/garypang13/luci-app-dnsfilter.git package/luci-app-dnsfilter
git clone https://github.com/BCYDTZ/luci-app-UUGameAcc.git package/luci-app-UUGameAcc
