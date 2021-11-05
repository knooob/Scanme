#!/bin/bash

echo "_____________________________________________________________________________________"
echo -e "\e[33m

                                                                                           
 ad88888ba      ad8888ba          db         888b      88  88b           d88  88888888888  
d8       8b   d8        8b       d88b        8888b     88  888b         d888  88           
Y8           d8                 d8  8b       88  8b    88  88 8b       d8 88  88           
 Y8aaaaa     88                d8    8b      88   8b   88  88  8b     d8  88  88aaaaa      
         8b  88               d8YaaaaY8b     88    8b  88  88   8b   d8   88  88      
         8b  Y8              d8        8b    88     8b 88  88    8b d8    88  88           
Y8a     a8P   Y8a      a8P  d8         8b    88      8888  88     888     88  88           
  Y88888P        Y8888Y    d8            8b  88       888  88      8      88  88888888888 

\e[0m
"
echo "_____________________________________________________________________________________"
echo
echo
read -p "Enter IP ADDRESS:" IP
echo
echo
echo "--------------------------------------------------"
echo
echo -e "\e[5;36mStarting Scan for Most Common Ports\e[0m"
echo
nmap -sC -sV -Pn -O $IP
echo 
msg=" Scan for most Common ports on $IP is completed"
export msg
./discord.sh
echo -e "\e[5;36mScan For Most Common Ports Done\e[0m"
echo
echo "--------------------------------------------------"
echo
echo -e "\e[5;36mAll Ports Script Scan\e[0m"
echo
nmap -sC -sV -Pn -p- $IP
msg=" All Port Scan on $IP is completed"
export msg
./discord.sh 
echo
echo -e "\e[5;36mDone With all port Script Scan\e[0m"
echo
echo "--------------------------------------------------"
echo
echo -e "\e[5;36mVulnerability Scan\e[0m"
echo
nmap -Pn --script vuln $IP
msg=" Vulnerability Script Scan on $IP is completed"
export msg
./discord.sh 
echo
echo -e "\e[5;36mDone With vuln Script Scan\e[0m"
echo
echo "--------------------------------------------------"
