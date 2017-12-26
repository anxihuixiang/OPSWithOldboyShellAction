#!/bin/bash

####
#  exec 当前进程执行脚本后退出，后面的脚本不再执行 
####
# 读取 tmp.log 中的内容
exec </tmp/tmp.log 

#read 逐行读取，读取到的内容放倒 line 临时变量中
while read line 
do
   echo $line 
done

echo ok;