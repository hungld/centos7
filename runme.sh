#!/bin/bash 

NC='\033[0m' # No Color
RED='\033[0;31m'
GREEN='\033[;32m'
YELLOW='\033[;33m'
clear
echo
echo -e "${YELLOW} SIO NODES:${NC}"
echo -e "${YELLOW}===========${NC}"
echo -e "${GREEN}192.168.0.201,10.10.10.201${NC}"
ssh 192.168.0.201 hostname
ssh 192.168.0.201 fdisk -l|egrep 'sdb|sdc'|awk '{print $1,$2,$3,$4}'
echo -e "${GREEN}192.168.0.202,10.10.10.202${NC}"
ssh 192.168.0.202 hostname
ssh 192.168.0.202 fdisk -l|egrep 'sdb|sdc'|awk '{print $1,$2,$3,$4}'
echo -e "${GREEN}192.168.0.203,10.10.10.203${NC}"
ssh 192.168.0.203 hostname
ssh 192.168.0.203 fdisk -l|egrep 'sdb|sdc'|awk '{print $1,$2,$3,$4}'
echo -e "${GREEN}192.168.0.204,10.10.10.204${NC}"
ssh 192.168.0.204 hostname
ssh 192.168.0.204 fdisk -l|egrep 'sdb|sdc'|awk '{print $1,$2,$3,$4}'

