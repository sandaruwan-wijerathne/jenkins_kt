#!/bin/sh
sudo pkill docker


sudo iptables -t nat -F


sudo ifconfig docker0 down


sudo brctl delbr docker0


docker -d

systemctl restart docker

