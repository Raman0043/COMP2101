#!/bin/bash
#Creating my first challenge script for the class

#This script displays information about a computer


hostname -f  
           #For getting fully-qualified domain of the computer
echo 'Domain name'


hostnamectl
            #System operating system and its version 
echo 'System info'


ip a s ens33 | grep -w inet | awk '{print$2}'
            #Required ip address for the challenge script   
echo 'ip address'


df /dev/sda3  
            #shows the required amount of space on root filesystem
echo  'amount of space on root filesystem'


exit

