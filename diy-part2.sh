#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
rm -rf feeds/luci/themes/luci-theme-argon
rm -rf feeds/packages/net/xray-core
sed -i 's/192.168.1.1/10.10.10.1/g' package/base-files/files/bin/config_generate
git clone https://github.com/honwen/luci-app-aliddns package/luci-app-aliddns
git clone https://github.com/jerrykuku/luci-theme-argon package/luci-theme-argon
git clone https://github.com/jerrykuku/luci-app-argon-config package/luci-app-argon-config
git clone https://github.com/messense/aliyundrive-webdav package/aliyundrive-webdav
git clone -b luci https://github.com/xiaorouji/openwrt-passwall package/psw
git clone -b packages https://github.com/xiaorouji/openwrt-passwall package/pswcore
