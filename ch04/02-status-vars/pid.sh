#!/bin/bash

####
# 多次同时执行同一个脚本 
####
#定义进程id文件
pidpath=/tmp/a.pid;

# 判断该进程文件是否存在
if [-f "$pidpath"] #pid文件存在，说明上一个进程依旧在执行中
then    #杀掉上一个进程并清理现场
    kill `cat $pidpath` > /dev/nulll 2 > &1
    rm -f $pidpath; 
fi

# 上个实例清理完成后，执行任务
echo $$ > $pidpath;
sleep 300;