#!/bin/sh
#Sets up aliases in ubuntu/lubuntu that will make life
#a lot, lot, easier

#Simplify installation
echo "alias apt-install=\"apt-get install\"" >> ~/.bash_aliases
echo "Added \"apt-install\" command."
echo "alias apt-search=\"apt-cache search\"" >> ~/.bash_aliases
echo "Added \"apt-search\" command."
echo "alias apt-autorm=\"apt-get autoremove\"" >> ~/.bash_aliases
echo "Added \"apt-autorm\" command."
echo "alias dnsrotate=\"bash /etc/RandomDNSCrypt.sh\"" >> ~/.bash_aliases
echo 'If the DNSCrypt installation was successful, type \'dnsrotate\' to rotate which dnscrypt server you are using. Each has different pros and cons, which will be listed. Your system will automatically rotate dnscrypt servers at startup.'
echo "alias netlock=\"rfkill block all; ufw default deny outgoing; ufw default deny incoming\"" >> ~/.bash_aliases
echo "Added the \"netlock\" command. Use it to stop all incoming/outgoing connections."
echo "alias netunlock=\"rfkill unblock all; ufw default allow outgoing; ufw default deny incoming\"" >> ~/.bash_aliases
echo "Added the \"netunlock\" command. Use it to undo netlock."