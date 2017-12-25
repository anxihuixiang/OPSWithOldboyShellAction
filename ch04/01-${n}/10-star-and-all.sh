#!/bin/bash

####
#   $*,%@ 代表所有空格（含引号内部）切割出来的变量集合
#  "$*" 代表所有命令行所有字符串
#  "$@" 代表所有命令行参数的数组
####
#清空所有命令行参数，并赋予新的参数
set -- "I am" handsome oldboy;

#打印命令行参数个数
echo $#;

#打印$1-$3
echo $1;
echo $2;
echo $3;

# 打印 $*, 表示所有空格分割后的参数列表
echo $*;

# 打印 $@ ,等价于 $*
echo $@;

# 遍历 $*
for i in $* #i 表示取出的临时变量
do
    echo $i
done

# 遍历 $@，等价于 $*
for i in $@
do
    echo $i
done

# 打印 "$*" , 表示所有空格分割的命令行参数列表拼接的原样字符串
echo "$*";

# 打印 "$@" ，表示所有实际命令行参数列表
echo "$@";

# 遍历 "$*"
# ——》 仅一个变量
for i in "$*"
do
    echo $i
done

# 遍历 "$@"
for i in "$@"
do
    echo $i
done


