#!/bin/bash

####
# 测试 pid.sh 
####
# 查看 pid.sh 的 pid
ps -ef | grep pid.sh | grep -v grep;

# 后台运行
sh pid.sh &

# 查看 pid.sh 的 pid
ps -ef | grep pid.sh | grep -v grep;

# 后台运行
sh pid.sh &

# 查看 pid.sh 的 pid
ps -ef | grep pid.sh | grep -v grep

# 后台运行
sh pid.sh &

# 查看 pid.sh 的 pid
ps -ef | grep pid.sh | grep -v grep;