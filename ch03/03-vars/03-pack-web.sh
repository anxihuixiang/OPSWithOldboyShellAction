#!/bin/bash

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
