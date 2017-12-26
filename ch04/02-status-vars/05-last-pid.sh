#!/bin/bash

####
#  $! 获取上一个执行脚本的pid 
####
# 查看 pid.sh 的 pid
ps -ef | grep pid.sh | grep -v grep

# 运行 pid.sh 
sh pid.sh &

# 打印 pid.sh 的执行进程
echo $!

# 查看 pid.sh 的 pid
ps -ef | grep pid.sh | grep -v grep