#!/bin/bash
#Security module!
#We try to enable the firewall on our first pass

ufw enable

apt-get update

#After we install gufw, we try to enable the firewall again, just in-case it failed the first time or is disabled due to gufw installation
apt-get install -y gufw
ufw enable

#Create a separate extension terminal that does the legwork of processing the firewall rulesets/gufw
(xterm -e bash ./ConfigureFirewall.sh $1)&

#Configure DNSCrypt depending on version
if[$1="14.04"]
then
	add-apt-repository ppa:anton+/dnscrypt
	apt-get update
	else
	apt-get install -y dnscrypt-proxy
fi

apt-get install -y rkhunter

apt-get install -y dnscrypt-proxy
bash ./DNSCryptConfig.sh $1

#There have been exploits previously found for pidgin and transmission. If these aren't needed, don't use them.
apt-get remove -y pidgin
apt-get remove -y transmission

exit 0