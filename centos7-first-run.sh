#!/bin/bash




       #############################################
	   #
	   #
	   
	   
	   #
	   #
	   #######################################################################3
	   
	   
	   
	   

	   
	   
######################################
#Update the system 
#######################################	   
yum update -y 
yum install -y epel-release
yum install -y fio git tar nmap nload 



######################################
#Stop firewalld 
#
######################################
systemctl stop firewalld
systemctl disable firewalld









#END




