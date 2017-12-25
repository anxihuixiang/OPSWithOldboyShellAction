#!/bin/bash

####
# $$ 当前脚本的pid 
####
# 将当前脚本的pid输出到文件中
echo $$ > /tmp/a.pid;

#睡300s模拟守护
sleep 300;