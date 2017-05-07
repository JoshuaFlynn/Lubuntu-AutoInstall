#!/bin/bash

#This lays the groundwork for setting up DNSCrypt. For now, we give the user a default resolver name, although we'll expand the ability for them to select from the CSV list at a later date.

#We create a dud DNSCrypt user who has basically no privileges, which will run the DNScrypt system from (as opposed to having admin level privileges, a security risk)
adduser --system --quiet --home /run/dnscrypt --shell /bin/false --group --disabled-password --disabled-login dnscrypt

#We copy over our random DNS crypt script into the same directory as rc.local
#This contains a predetermined list of DNS crypt provider names which is randomly selected from
cp ./RandomDNSCrypt.sh /etc/RandomDNSCrypt.sh

#We now have to update rc.local to call this
#We back this up in-case the next operation goes horribly wrong
cp rc.local rc.local.bak

echo 'Ignore any errors in the next part. Despite complaining, this usually succeeds.'

#We use a cheap and tacky trick of prepending the data sloppily to the file. This is better than using sed which isn't always consistent across systems, and is a bit difficult to read.
#This will call at every login/reboot a new DNSCrypt server
#If there are specific servers the user wants to remove or add, go to the /etc/RandomDNSCrypt.sh file
#And add/remove them from there
echo 'bash ./RandomDNSCrypt.sh' > ./tmpfile
cat /etc/rc.local >> ./tmpfile
cp ./tmpfile /etc/rc.local
rm ./tmpfile

#Make a directory to work from
mkdir /run/dnscrypt

echo 'Please go into  \'Network Connections\', pick your primary connection, click \'edit\', click \'IPv4 Settings\', set Method to: \'Automatic (DHCP) addresses only\', and in DNS servers put \'127.0.0.2\'. If you find you cannot connect to websites, simply revert the settings, however it will mean DNSCrypt is not enabled by default.'