#!/bin/bash

#为 vim 设置别名 vi
echo "alias vi='vim'" >> /etc/profile

#查看配置文件尾部一行
tail -l /etc/profile;

#使最新的配置生效
source /etc/profile

####
# 查看sh版本
####
#查看sh版本
ll /bin/sh

#查看bash版本
ll /bin/bash


####
# 查看系统shell软件的开头
####
#查看 sshd ，脚本开头
head -1 /etc/init.d/sshd

#查看 ntpd 脚本开头
head -1 /etc/init.d/ntpd

#查看 crond 脚本开头
head -1 /etc/init.d/crond

####
# 执行脚本的各种方法
####
#使用 sh 执行脚本，开启新进程
sh test.sh

# 使用 bash 执行脚本，开启新进程
bash test.sh

#直接执行，需要有执行权限
# ——》没有执行权限
./test.sh

# 给予执行权限
chmod u+x test.sh

#直接执行，可以执行
./test.sh

# 使用 source 载入当前进程执行
source test.sh

# 使用 . 载入当前进程执行
. test.sh


####
# 定义和打印变量
####
#定义变量并赋值
oldboy="I am oldboy"

#打印变量
echo oldboy

####
# 打印环境变量
####
# 打印全局环境变量
env | tail

#打印所有变量以及函数
declare | tail

#打印全部变量
set -o | tail

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

####
#  自定义的登录提示 
####
# 方式1，修改配置文件 /etc/motd
sudo subl /etc/motd

#写入并保存
welcome to oldboy linux shell training

# 方式2，自定义提示脚本
# 编辑脚本 oldboy.sh
echo "Here s oldboy training"

# 将脚本保存到启动路径下 /etc/profile.d/oldboy.sh


####
# 打印系统环境变量 
####
#用户名
echo $USER 

#用户id
echo $UID 

#用户目录
echo $HOME 

# 格式化打印
printf "$HOME\n"

#工作目录
echo $PWD 

#shell
echo $SHELL

####
# 取消定义的变量 
####
# 定义变量
TEMP="I am tmp var"

#打印 
echo $TEMP;

#取消变量
unset TEMP

#再次打印
echo $TEMP;

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


####
# 变量接收命令结果 
####
#执行命令 ls
ls;

#反引号缓存 ls 结果到变量
CMD_LS=`ls`;

echo $CMD_LS;

#缓存命令结果方式2
CMD_PWD=$(pwd);

echo $CMD_PWD;

####
# 站点打包 
####
#获取当前标准日期
CMD=$(date +%F);
echo $CMD;

#拼接按日期打包文件名
echo $(date +%F).tar.gz;
echo `date +%F`.tar.gz;

#打包
tar zcf etc_$(date +%F).tar.gz /etc

#查看详情
ls -l etc_$(date +%F).tar.gz

#获取主机名
H=$(uname -n);
echo $H;

#打包
tar zcf $H.tar.gz /etc/services

ls -l /etc/services/$H.tar.gz

####
# 打印日期 
####
#单引号，原样输出
echo 'today is date'
echo 'today is `date`'

#双引号，命令会被解析
echo "today is date"
echo "today is `date`"
echo "today is $(date)"

#输出多个字符或变量
echo today is $(date)


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