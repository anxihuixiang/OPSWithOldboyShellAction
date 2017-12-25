#!/bin/bash

####
# $# 与 if 验证参数个数 
####
if [$# -ne 2] #参数个数!=2 
then
    echo "USAGE:/bin/sh $0 arg1 arg2";# $0 表示脚本全路径名
    exit 1;
fi

#参数个数=2的时候，打印这2个参数
echo $1 $2;
