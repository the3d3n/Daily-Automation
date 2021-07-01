#!/bin/bash

sudo docker run -it --network host --rm adarnimrod/masscan -p1-65535 $1 --wait 0 -e tun0 --rate=1000>masscan.txt
cat masscan.txt | grep -ohe "[0-9]*\/tcp" | awk -F / '{print $1}' > open_ports.txt
#We can also use tr 
# tr '\n' ','
#Will replace the new line character with comma
var=$(cat open_ports.txt | sed -z 's/\n/,/g;s/,$/\n/')
nmap -T4 -A -p $var $1 -oN nmap.enum
