#!/bin/sh
URL="http://7xt1v0.com1.z0.glb.clouddn.com/"
ADBYBY_FILE="adbyby-gee.tar.gz"

cd /tmp
#清理官方去广告插件
echo -e "删除官方去广告插件--------------------------------\c"
[ ! -f "/etc/market/adblock.script" ] && echo -e "[\e[31m失败\e[37m]" && echo -e "[\e[31m请安装云平台官方的【屏蔽视频广告】插件\e[37m]" && exit 1
CONF_DIR="/etc/adblock"
kproxy-conf uninstall adblock
while read line ; do
	file="/"$line
	[ -f "$file" ] && rm -rf $file 
done < /etc/adblock.files 
/etc/init.d/nginx reload
rm -rf $CONF_DIR
rm -rf /etc/adblock.files
while read line ; do
	file="/"$line
        [ -f "$file" ] && rm -rf $file 
done < /etc/adblock_www.files 
rm -rf /etc/adblock_www.files 
echo -e "--------------------------------------------------[\e[32m完成\e[37m]"

#下载adbyby
echo -e "下载所需要的文件----------------------------------\c"
curl -s -o /tmp/$ADBYBY_FILE -m 120 $URL$ADBYBY_FILE >/dev/null
echo -e "--------------------------------------------------[\e[32m完成\e[37m]"
echo "开始安装，安装的文件有:"
tar -C / -xzvf /tmp/$ADBYBY_FILE
echo -e "添加启动项并启动-----------------------------------\c"
/etc/init.d/adbyby enable >/dev/null
/etc/init.d/adbyby start >/dev/null
echo -e "--------------------------------------------------[\e[32m完成\e[37m]"
echo -e "[\e[32m 1.本插件运行状态在云平台官方【屏蔽视频广告】插件状态下查看。\e[37m]"
echo -e "[\e[32m 2.若要删除本插件在云平台删除官方【屏蔽视频广告】即可。\e[37m]"
