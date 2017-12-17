#!/bin/bash

####
# 执行脚本的各种方法 
####
#使用 sh 执行脚本，开启新进程
sh test.sh

# 使用 bash 执行脚本，开启新进程
bash test.sh

#直接执行，需要有执行权限
# ——》没有执行权限
./test.sh

# 给予执行权限
chmod u+x test.sh

#直接执行，可以执行
./test.sh

# 使用 source 载入当前进程执行
source test.sh

# 使用 . 载入当前进程执行
. test.sh

