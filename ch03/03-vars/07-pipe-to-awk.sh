#!/bin/bash

####
# 通过管道向 awk 传递变量值
#       与shell中变量的解析规则一致
####
ETT="oldgirl";

#无引号解析变量值传递
echo $ETT | awk '{print $0}';

#单引号字面量传递
echo '$ETT' | awk '{print $0}';

#双引号解析变量值传递给awk
echo "$ETT" | awk '{print $0}';#传递给0号参数

#变量接收命令值
ETT=`pwd`

#无引号解析变量值传递
echo $ETT | awk '{print $0}';

#单引号字面量传递
echo '$ETT' | awk '{print $0}';

#双引号解析变量值传递给awk
echo "$ETT" | awk '{print $0}';#传递给0号参数