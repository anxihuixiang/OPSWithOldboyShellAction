#!/bin/bash

####
#  不同方式获取变量的长度  
#       从上到下效率递减  
####
OLDBOY="I am oldboy"

# 原始方式打印变量
echo $OLDBOY;

# 大括号方式打印变量
# 大括号表示要对变量进行进一步的处理
echo ${OLDBOY}

#内置变量长度方法
echo ${#OLDBOY}

#expr length 表达式长度获取变量长度
expr length "$OLDBOY"

#wc -L 获取变量长度(Word Count)
echo $OLDBOY | wc -L 

# awk length 获取变量长度
echo "$OLDBOY" | awk '{print length($0)}'