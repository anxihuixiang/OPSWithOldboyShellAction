#!/bin/bash

#为 vim 设置别名 vi
echo "alias vi='vim'" >> /etc/profile

#查看配置文件尾部一行
tail -l /etc/profile;

#使最新的配置生效
source /etc/profile

####
# 查看sh版本
####
#查看sh版本
ll /bin/sh

#查看bash版本
ll /bin/bash


####
# 查看系统shell软件的开头
####
#查看 sshd ，脚本开头
head -1 /etc/init.d/sshd

#查看 ntpd 脚本开头
head -1 /etc/init.d/ntpd

#查看 crond 脚本开头
head -1 /etc/init.d/crond

####
# 执行脚本的各种方法
####
#使用 sh 执行脚本，开启新进程
sh test.sh

# 使用 bash 执行脚本，开启新进程
bash test.sh

#直接执行，需要有执行权限
# ——》没有执行权限
./test.sh

# 给予执行权限
chmod u+x test.sh

#直接执行，可以执行
./test.sh

# 使用 source 载入当前进程执行
source test.sh

# 使用 . 载入当前进程执行
. test.sh


####
# 定义和打印变量
####
#定义变量并赋值
oldboy="I am oldboy"

#打印变量
echo oldboy

####
# 打印环境变量
####
# 打印全局环境变量
env | tail

#打印所有变量以及函数
declare | tail

#打印全部变量
set -o | tail

####
# 自定义环境变量
####
# export 方式导出全局的环境变量
export NAME="oldboy";

# export 导出之前声明的变量为全局环境变量
NAME_FOR_EXP="expboy";
export NAME_FOR_EXP;

# declare -x 方式，声明并导出一个全局的环境变量
declare -x NAME_NEW="newboy";

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