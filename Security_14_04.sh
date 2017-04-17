#Security module!
#We try to enable the firewall on our first pass
ufw enable

#repository requirement for dnscrypt if we're using 14.04
sudo add-apt-repository ppa:anton+/dnscrypt
sudo apt-get update

#After we install gufw, we try to enable the firewall again, just in-case it failed the first time
apt-get install -y gufw
ufw enable

sudo apt-get install -y dnscrypt-proxy
sudo apt-get install -y rkhunter

#There have been exploits previously found for pidgin and transmission. If these aren't needed, don't use them.
apt-get remove -y pidgin
apt-get remove -y transmission