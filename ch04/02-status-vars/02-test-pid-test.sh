#!/bin/bash

####
# 测试 test_pid.sh
####
# 查看 test_pid.sh 的 pid
ps -ef | grep test_pid | grep -v grep;

# 守护运行 test_pid.sh
sh test_pid.sh &

# 查看 test_pid.sh 的 pid
ps -ef | grep test_pid | grep -v grep;

#查看进程文件 
cat /tmp/a.pid;