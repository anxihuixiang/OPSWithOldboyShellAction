#!/bin/bash

####
# $_ 获取上一个命令或脚本的最后一个命令行参数 
####
/etc/init.d/rpcbind start oldboy;

#打印最后一个命令行参数
echo $_;

/etc/init.d/rpcbind start oldgirl;

#打印最后一个命令行参数
echo $_;