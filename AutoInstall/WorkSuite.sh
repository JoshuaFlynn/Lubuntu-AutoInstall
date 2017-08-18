apt-get update
apt-get install -y libreoffice
apt-get install -y evolution

#This checks for language support that libreoffice etc might have missed
apt-get install -y $(check-language-support)

#We add in git itself! Woo!
apt-get install -y git

#These programs are not needed, largely due to the suite we install
apt-get remove -y sylpheed
apt-get remove -y gnumeric
apt-get remove -y abiword
apt-get autoremove -y
