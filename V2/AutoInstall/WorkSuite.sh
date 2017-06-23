#!/bin/bash
apt-get update
#Office package
apt-get install -y libreoffice

#Email client
apt-get install -y evolution

apt-get remove -y sylpheed
apt-get remove -y gnumeric
apt-get remove -y abiword
apt-get autoremove -y

exit 0