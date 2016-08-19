#### 特性
1.去广告自然不用说
2.支持额外规则更新
3.无需SD卡

#### 已知问题
1.会导致qos失效以及后台无法显示真正的速度（解决方法：可以把需要限速的终端mac填入MAC黑名单，详见高级功能1）
2.部分ss插件需要添加100.100.100.100到黑名单。
3.路由器性能原因，不支持https网站过滤。

#### 教程
1.需要root权限
2.安装极路由官方的【屏蔽视频广告】插件
![](https://oartlm8rs.qnssl.com/hiwifi/ji-lu-you-adbyby/10-51-36.jpg)

3.在shell输入以下命令

~~~
cd /tmp && rm -rf adbyby.sh && wget http://7xt1v0.com2.z0.glb.clouddn.com/adbyby.sh && chmod 755 adbyby.sh && ./adbyby.sh && rm -rf adbyby.sh && rm -f adbyby-gee.tar.gz
~~~
4.安装成功
![](https://oartlm8rs.qnssl.com/hiwifi/ji-lu-you-adbyby/10-53-38.jpg)

5.云平台或者手机app查看【屏蔽视频广告】状态。
![](https://oartlm8rs.qnssl.com/hiwifi/ji-lu-you-adbyby/10-54-38.jpg)

6.卸载本插件直接在云平台卸载即可。卸载前请备份好您自己的配置文件
~~~
/etc/adbyby/MAC_list
/etc/adbyby/yours.txt
~~~

#### 高级功能
1.MAC黑名单
~~~ 
/etc/adbyby/MAC_list
~~~
编辑此文件，可以添加MAC黑名单，名单中不会被过滤。
2.自定义规则
~~~
/etc/adbyby/data/yours.txt
~~~
编辑此文件，可以添加自定义规则
3.以上操作重启插件生效。
#### 鸣谢
[adbyby](http://www.adbyby.com/)
小兔兔（额外规则)
#### 其他
1.简单广告的自定义规则的写法我会发新文介绍
2.广告可以到adbyby主页官方群反馈。
