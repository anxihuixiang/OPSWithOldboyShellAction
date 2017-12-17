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