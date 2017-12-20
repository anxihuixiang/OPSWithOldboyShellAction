#!/bin/bash

####
# grep 命令中使用变量，作为过滤条件参数 
####
OLDBOY="oldboy";

#双引号变量，传递的是变量值
grep "$OLDBOY" grep.log;

#单引号，传递的是字面量
grep '$OLDBOY' grep.log

#不加引号，不推荐，同双引号，传递的是变量值
grep $OLDBOY grep.log

