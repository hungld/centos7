#!/bin/bash



   #####################################
   #  Install tools etc ...
   #
    #
    ###########################################


for i in {1..5}
do
 ssh root@192.168.0.20${i} yum install -y epel-release 
  sleep 3
 ssh root@192.168.0.20${i} yum install -y nload htop nmap bmon iptraf git fio vim
  sleep 4
 ssh root@192.168.0.20${i} rpm -qa |egrep 'nload|htop|fio|vim|nmap|git'

done








