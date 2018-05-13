#!/bin/bash

clear
sleep 1


   #####################################################
   ##                                              #####
   ###  Network check                                 ##
    ###                                                #
     ####                                              #
      #####Jones Uzan                                ###
        ################################################



#Colors
#############################################
NC='\033[0m' # No Color
RED='\033[0;31m'
GREEN='\033[;32m'
YELLOW='\033[;33m'

#Test network connectivity to all the nodes
#############################################
echo -e "               ${YELLOW}Test Network connectivity to all nodes${NC}"
echo -e " ${YELLOW}************************************************************${NC}"
echo " " 
sleep 1

#CHECK PING TO THE 4 IP ADDRESS ON EACH NODE
#############################################
c=1
a=0
b=1
for l in {1..5}
do
 for n in {1..4}
  do
   good=`ping -c 1 192.168.${a}.20${b}|grep received|awk '{print $4}'`
     if [[ "$good" = 1 ]]
     then 
        echo -e "192.168.${a}.20${b} ${GREEN}is good${NC}"
     else 
 
        echo -e "192.168.${a}.20${b} ${RED}**********Check for errors${NC}"
     fi

   a=`echo $a + 1|bc`
 done
echo -e "${YELLOW}----------${NC} "
echo " " 
sleep 1
 b=`echo $b + 1|bc`
 a=0
 
done
