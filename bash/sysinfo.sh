#!/bin/bash
#Creating my Second challenge script for the class

#This script displays system information about my computer



#These are variables for my script 
domainname=$(hostname -f)

osv=$(hostnamectl | awk 'NR == 7 {print $3, $4, $5}')

address=$(ifdata -pa ens33)

availablespace=$(df /dev/sda3 | grep -v Available | awk '{print$4}')



















#Creating my script using output template 
cat <<EOF
Report for my vm
==================
FQDN: $domainname
Operating system and version: $osv
Ip address: $address
Root file system's free space: $availablespace
===================

EOF
