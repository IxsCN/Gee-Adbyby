ADBYBY_DIR="/var/etc/adbyby"
DEV_DIR="/tmp/data/adbyby-gee"

cp $ADBYBY_DIR/MAC_list $DEV_DIR/MAC_list
cp $DEV_DIR/MAC_list.null $ADBYBY_DIR/MAC_list

#开始打包
cd /tmp/data/adbyby-gee
tar czvf adbyby-gee.tar.gz /var/etc/adbyby/* /etc/init.d/adbyby /etc/market/adblock.script

cp $DEV_DIR/MAC_list $ADBYBY_DIR/MAC_list