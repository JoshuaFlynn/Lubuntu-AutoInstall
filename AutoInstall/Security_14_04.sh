#!/bin/bash
#Security module!
#We try to enable the firewall on our first pass
ufw enable

#Protection against the Samba exploit. Hopefully.
ufw deny in 445
ufw deny out 445

#Reload the firewall so the new rules take effect
ufw reload

#Although included in the WorkSuite, we have to call it here too as it's needed to download the doublepulsar-detection-tool
sudo apt-get install -y git

#Look at me! I'm a doublepulsar detection script (that Microsoft won't fix!)
git clone https://github.com/countercept/doublepulsar-detection-script.git

#To run the above script, when in it's installed directory, execute the following (make sure the IP is your local network):
#python detect_doublepulsar_smb.py --net 192.168.1.1/24
#python detect_doublepulsar_rdp.py --net 192.168.1.1/24

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
