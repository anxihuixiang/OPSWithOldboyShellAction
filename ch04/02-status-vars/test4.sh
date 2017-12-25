#!/bin/bash

#判断参数个数是否为不等于2
[$# -ne 2] && { #如果参数个数不等于2，给出提示并退出
    echo "must two args";
    exit 1;#退出
}

#满足参数个数为2的条件
echo oldgirl;