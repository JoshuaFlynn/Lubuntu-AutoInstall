#!/bin/bash
#Security module!
#We try to enable the firewall on our first pass
ufw enable

#Protection against the Samba exploit. Hopefully.
ufw deny in 445
ufw deny out 445

#Reload the firewall so the new rules take effect
ufw reload

sudo apt-get update

#After we install gufw, we try to enable the firewall again, just in-case it failed the first time
apt-get install -y gufw
ufw enable

apt-get install -y dnscrypt-proxy
bash ./DNSCryptConfig.sh
apt-get install -y rkhunter

#There have been exploits previously found for pidgin and transmission. If these aren't needed, don't use them.
apt-get remove -y pidgin
apt-get remove -y transmission
apt-get autoremove -y
