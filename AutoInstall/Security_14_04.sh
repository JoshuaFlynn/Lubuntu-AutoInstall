#!/bin/bash
#Security module!
#We try to enable the firewall on our first pass
ufw enable

#repository requirement for dnscrypt if we're using 14.04
add-apt-repository ppa:anton+/dnscrypt
apt-get update

#After we install gufw, we try to enable the firewall again, just in-case it failed the first time
apt-get install -y gufw
ufw enable

apt-get install -y rkhunter

apt-get install -y dnscrypt-proxy
bash ./DNSCryptConfig.sh

#There have been exploits previously found for pidgin and transmission. If these aren't needed, don't use them.
apt-get remove -y pidgin
apt-get remove -y transmission