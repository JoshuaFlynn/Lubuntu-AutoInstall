#Installs programs that get the creative juices flowing!

#This repository is for simplescreenrecorder
add-apt-repository -y ppa:maarten-baert/simplescreenrecorder
apt-get update

#Screen recording capabilities
apt-get install -y simplescreenrecorder

#Video editing tool: Windows Movie Maker gone right!
apt-get install -y kdenlive

#Linux's answer to powerful graphical editing (GIMP stands for Graphics Image Manipulation Program)
apt-get install -y gimp

#Good for bulk converting images and the like, resizing etc
apt-get install -y imagemagick

#Linux answer to the paint program
apt-get install -y kolourpaint4

#Animation tool
#You can also manually install an up-to-date version of synfig from their site!
apt-get install -y synfig

#This is no longer required as kolourpaint4 is superior
apt-get remove -y mtpaint

#Audio editing and recording
apt-get install -y audacity


#Clean up after ourselves
apt-get autoremove -y