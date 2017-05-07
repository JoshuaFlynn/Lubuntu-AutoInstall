#/bin/sh

#Make a backup of the lubuntu-rc.xml file before we modify it
cp ~/.config/openbox/lubuntu-rc.xml ~/.config/openbox/lubuntu-rc.xml.bak

#Modify it using sed
sed -i 's/lxsession-default tasks/lxtask/' ~/.config/openbox/lubuntu-rc.xml

#Reboot openbox
openbox --restart