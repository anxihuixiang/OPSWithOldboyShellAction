#!/bin/bash


####
#  $0 代表执行脚本的名字或全路径名 
####
#直接运行脚本名
sh echo-0.sh

#使用脚本全路径名执行
sh ~/vspros/OPSWithOldboyShellAction/ch04/01-${n}/echo-0.sh

# dirname 获取（脚本）路径的目录名
dirname ~/vspros/OPSWithOldboyShellAction/ch04/01-${n}/echo-0.sh

# basename 获取路径的文件名
basename ~/vspros/OPSWithOldboyShellAction/ch04/01-${n}/echo-0.sh

# 打印路径信息
sh 05-echo-path.sh ~/vspros/OPSWithOldboyShellAction/ch04/01-${n}/echo-0.sh