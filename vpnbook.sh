#!/bin/bash

# Prints the VPNBook public username and password to the console prompt

wget -q http://www.vpnbook.com/freevpn
cat freevpn | grep Username: | sed -e '1d' | cut -d ">" -f 3 | cut -d "<" -f 1
cat freevpn | grep Password: | sed -e '1d' | cut -d ">" -f 3 | cut -d "<" -f 1
rm freevpn
