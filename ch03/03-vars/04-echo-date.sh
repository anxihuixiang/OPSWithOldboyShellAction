#!/bin/bash

####
# 打印日期 
####
#单引号，原样输出
echo 'today is date'
echo 'today is `date`'

#双引号，命令会被解析
echo "today is date"
echo "today is `date`"
echo "today is $(date)"

#输出多个字符或变量
echo today is $(date)
