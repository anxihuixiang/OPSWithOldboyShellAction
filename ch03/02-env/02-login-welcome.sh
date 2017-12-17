#!/bin/bash

####
#  自定义的登录提示 
####
# 方式1，修改配置文件 /etc/motd
sudo subl /etc/motd

#写入并保存
welcome to oldboy linux shell training

# 方式2，自定义提示脚本
# 编辑脚本 oldboy.sh
echo "Here s oldboy training"

# 将脚本保存到启动路径下 /etc/profile.d/oldboy.sh
