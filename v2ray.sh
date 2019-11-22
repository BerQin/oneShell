#!/bin/bash

v2cpath = '/etc/v2ray/config.json'
iptabpath = '/etc/sysconfig/iptables'

cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
bash <(curl -L -s https://install.direct/go.sh)
yum install iptables
yum -y install lrzsz

cp ~/iptables /etc/sysconfig/iptables
cp ~/config.json /etc/v2ray/config.json

systemctl restart iptables
systemctl start v2ray
systemctl status v2ray
