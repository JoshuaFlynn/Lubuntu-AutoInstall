#!/bin/bash

#Because Windows viruses can affect us via wine, we have to have an anti-virus installed
#clamav is that anti-virus
apt-get install -y clamav

apt-get install -y wine
apt-get install -y winetricks

exit 0