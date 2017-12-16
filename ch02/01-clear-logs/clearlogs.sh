#!/bin/bash
#####
#  清除日志的脚本
#####
#日志目录变量
LOG_DIR=/var/log;
#root 用户变量
ROOT_UID=0;

#判断是否是root用户
if ["$UID" -ne "$ROOT_UID"] #不是 root 用户 
then
    #提示
    echo "Must be root to run this script."
    #退出
    exit 1
fi

#判断切换目录是否成功
cd $LOG_DIR || {
    echo "cannot change to necessary directory."
    exit 1;
}

#尝试清除，并判断是否成功
cat /dev/null>messages && {
    echo "logs clean up."
    exit 0;
}

#清除失败
echo "logs cleaned up fail."
exit 1