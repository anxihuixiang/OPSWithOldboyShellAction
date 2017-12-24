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

####
# awk 打印值未加引号的变量 
####
ETT=123;#未加引号

#打印双引号包裹的变量
# 打印字面量
awk 'BEGIN {print "$ETT"}';

#直接打印未包裹的变量
#输出空（仅取awk范围内的变量，因此尚未定义）
awk 'BEGIN {print $ETT}';

# 打印单引号包裹的变量
# 输出变量值
awk 'BEGIN {print '$ETT'}';

# 打印双单包裹的变量
# 输出变量值
awk 'BEGIN {print "'$ETT'"}';

####
#  结论 awk 环境：
#       无引号：寻找awk环境中的变量
#       单引号：寻找外部环境中的变量，只能获取外部非引号定义的变量（无论单双）
#                   尝试获取外部反引号命令变量会报错
#       双引号：代表字面量
#       三引号： 只能获取到引号定义的变量（无论单双）
#                   尝试获取外部反引号命令变量会报错
####

####
# awk 打印外部单引号定义变量 
####
ETT='oldgirl';

#直接打印未包裹的变量
#输出空（仅取awk范围内的变量，因此尚未定义）
awk 'BEGIN {print $ETT}';

# 打印单引号包裹的变量
# 尝试获取外部非引号变量，因此为空
awk 'BEGIN {print '$ETT'}';

#打印双引号包裹的变量
# 打印字面量
awk 'BEGIN {print "$ETT"}';

# 打印双单包裹的变量
# 尝试获取外部引号变量，因此会输出变量值
awk 'BEGIN {print "'$ETT'"}';

####
# awk 打印外部双引号定义变量 
####
ETT='testing';

#直接打印未包裹的变量
#输出空（仅取awk范围内的变量，因此尚未定义）
awk 'BEGIN {print $ETT}';

# 打印单引号包裹的变量
# 尝试获取外部非引号变量，因此为空
awk 'BEGIN {print '$ETT'}';

#打印双引号包裹的变量
# 打印字面量
awk 'BEGIN {print "$ETT"}';

# 打印双单包裹的变量
# 尝试获取外部引号变量，因此会输出变量值
awk 'BEGIN {print "'$ETT'"}';

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

####
# 打印位置参数1 
####
#传递1个参数
sh p1.sh oldboy;

# 传递2个参数，但 p1.sh 并未接收第二个参数
sh p1.sh oldboy oldgirl;

#传递带空格的字符串参数
sh p1.sh "oldboy oldgirl";

####
# 打印2个位置变了 
####
echo $1 $2;

####
# 打印位置参数 $1 和 $2
####
# 传递2个参数
sh p2.sh longge bingbing;

#传递带空格的字符串参数
sh p2.sh "longge bingbing" oldgirl;

####
#  打印到第n个位置的所有参数$n 
####
#打印15前15个变量
echo \${1..15};

#重定向打印前15个到指定的文件
echo \${1..15} > n.sh

#打印连续字符
echo {a..z};

#打钱前n个位置的字母
sh n.sh {a..z};

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