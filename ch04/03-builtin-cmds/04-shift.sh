#!/bin/bash

####
# shift 左移命令行参数（丢弃） 
####
#打印前2个命令行参数
echo $1 $2
if [ $# -eq 2 ] 
then
    #左移一个命令行参数  
    shift
    echo $1 #原先为 $2 的值
fi


