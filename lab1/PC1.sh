#!/bin/bash

#run me as root
#only works with wired configuration as i have set up in the lab


ifconfig eth0 down
ifconfig eth3 down
ifconfig eth3 up
ifconfig eth2 down
ifconfig eth2 up
ifconfig eth3 192.168.34.2
ifconfig eth2 192.168.36.1
route add default gw 192.168.36.2


echo "procede when all 4 computers are displaying this message, type Enter to continue"
read throwawaychar

ping 192.168.17.2
ping 192.168.17.1
ping 192.168.36.2
ping 192.168.34.1