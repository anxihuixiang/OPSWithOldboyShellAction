#!/bin/bash

####
# 自定义环境变量
####
# export 方式导出全局的环境变量
export NAME="oldboy";

# export 导出之前声明的变量为全局环境变量
NAME_FOR_EXP="expboy";
export NAME_FOR_EXP;

# declare -x 方式，声明并导出一个全局的环境变量
declare -x NAME_NEW="newboy";