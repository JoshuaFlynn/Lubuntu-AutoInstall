apt-get update
apt-get install -y libreoffice
apt-get install -y evolution

#This checks for language support that libreoffice etc might have missed
apt-get install $(check-language-support)

apt-get remove -y sylpheed
apt-get remove -y gnumeric
apt-get remove -y abiword
apt-get autoremove -y
