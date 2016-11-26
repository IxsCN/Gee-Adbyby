ADBYBY_DIR="/var/etc/adbyby"
DEV_DIR="/tmp/data/adbyby-gee"
CONFIG_DIR="/etc/adbyby"

#开始打包
cd /tmp/data/adbyby-gee
tar czvf adbyby-gee.tar.gz /var/etc/adbyby/adbyby /var/etc/adbyby/adbyby.sh /var/etc/adbyby/adhook.ini /var/etc/adbyby/cron.sh /var/etc/adbyby/firewall.sh /var/etc/adbyby/update.info /var/etc/adbyby/user.action /var/etc/adbyby/data/extra.txt /var/etc/adbyby/data/lazy.txt /var/etc/adbyby/data/user.txt /var/etc/adbyby/data/video.txt /var/etc/adbyby/doc/hidecss.js /etc/init.d/adbyby /etc/market/adblock.script /etc/firewall.d/99-adbyby.sh
