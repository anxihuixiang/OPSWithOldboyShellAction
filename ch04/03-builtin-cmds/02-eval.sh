#!/bin/bash


####
# eval 递归解析字符串中的命令和变量 
####
#执行非eval的普通echo命令
sh noeval.sh arg1 arg2

#执行eval解析的字符串命令
sh eval.sh arg1 arg2