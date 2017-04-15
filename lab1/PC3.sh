#!/bin/bash

#run me as root
#only works with wired configuration as i have set up in the lab


ifconfig eth0 down
ifconfig eth0 up
ifconfig eth0 192.168.17.2
route add default gw 192.168.17.1


echo "procede when all 4 computers are displaying this message, type Enter to continue"
read throwawaychar

ping 192.168.17.1
ping 192.168.36.2
ping 192.168.36.1
ping 192.168.34.2
ping 192.168.34.1
