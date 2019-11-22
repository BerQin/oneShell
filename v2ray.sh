#!/bin/bash

v2cpath = '/etc/v2ray/config.json'
iptabpath = '/etc/sysconfig/iptables'

cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
bash <(curl -L -s https://install.direct/go.sh)
yum install iptables
yum -y install lrzsz

rz

cp ./iptables ${iptabpath}
cp ./config.json ${v2cpath}

systemctl restart iptables
systemctl start v2ray

systemctl status v2ray
