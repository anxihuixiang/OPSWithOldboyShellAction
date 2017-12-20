#!/bin/bash


####
# 定义变量 
####
#不加引号定义
a=192.168.1.2;

# 单引号定义
b='192.168.1.2';

#双引号定义
c="192.168.1.2";

#输出
echo "a=$a";
echo "b=$b";
echo "c=${c}";


####
# 不同方式定义非连续字符串 
####
a=192.168.1.2-$a;
b='192.168.1.2-$a';
c="192.168.1.2-$a";

#输出
echo "a=$a";
echo "b=$b";
echo "c=${c}";