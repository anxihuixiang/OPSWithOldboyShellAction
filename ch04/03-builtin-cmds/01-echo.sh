#!/bin/bash

####
# echo 打印变量或字符串到标准输出 
####
#连续字符串
#——》会换行
echo oldboy;echo oldgirl;

# -n 不换行输出
echo -n oldboy;echo oldgirl;

# 输出含转义字符的字符串
#默认并不转义
echo "oldboy\toldgirl\noldboy\toldgirl"

# -e 解释转义字符
echo -e "oldboy\toldgirl\noldboy\toldgirl"

# 上面等价于 printf
printf "oldboy\toldgirl\noldboy\toldgirl"

#\b 退格 
echo -e "1\b23"

#等价于
printf "1\b23"