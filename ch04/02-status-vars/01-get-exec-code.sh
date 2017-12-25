#!/bin/bash

####
#  $? 获取上一个命令或脚本的执行结果
#       0   代表成功
#       !0  代表失败
####
#打印当前目录
pwd;

# 判断 pwd 的执行结果
echo $?;

#查看 /root 目录内容
ls /root;
echo $?;

# 移除 /root 及其子目录
rm -fr /root;
echo $?;

# 执行不存在的命令
oldboy;
echo $?;

####
# 网站备份 
####
cd /etc;
tar zcf /opt/services.tar.gz  ./services;
#判断打包是否成功
echo $?;

####
# 判断脚本执行是否成功 
####
sh test4.sh;
echo $?;

sh test4.sh a1 a2;
echo $?;
