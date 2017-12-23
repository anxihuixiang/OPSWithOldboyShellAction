#!/bin/bash

####
# 打印位置参数1 
####
#传递1个参数
sh p1.sh oldboy;

# 传递2个参数，但 p1.sh 并未接收第二个参数
sh p1.sh oldboy oldgirl;

#传递带空格的字符串参数
sh p1.sh "oldboy oldgirl";
