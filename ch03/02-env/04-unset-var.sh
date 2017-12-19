#!/bin/bash

####
# 取消定义的变量 
####
# 定义变量
TEMP="I am tmp var"

#打印 
echo $TEMP;

#取消变量
unset TEMP

#再次打印
echo $TEMP;