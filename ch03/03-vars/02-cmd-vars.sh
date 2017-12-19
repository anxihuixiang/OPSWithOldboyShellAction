#!/bin/bash
####
# 变量接收命令结果 
####
#执行命令 ls
ls;

#反引号缓存 ls 结果到变量
CMD_LS=`ls`;

echo $CMD_LS;

#缓存命令结果方式2
CMD_PWD=$(pwd);

echo $CMD_PWD;