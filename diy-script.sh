#!/bin/bash

# 修改默认IP
# sed -i 's/192.168.1.1/10.0.0.1/g' package/base-files/files/bin/config_generate

# 更改默认 Shell 为 zsh
# sed -i 's/\/bin\/ash/\/usr\/bin\/zsh/g' package/base-files/files/etc/passwd

sed -i '1i\src-git smpackage https://github.com/kenzok8/small-package' feeds.conf.default

# TTYD 免登录
# sed -i 's|/bin/login|/bin/login -f root|g' feeds/packages/utils/ttyd/files/ttyd.config

# 活动连接数修改
sed -i 's/16384/65536/g' package/kernel/linux/files/sysctl-nf-conntrack.conf
