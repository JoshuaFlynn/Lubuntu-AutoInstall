#minecraft repository
add-apt-repository -y ppa:minecraft-installer-peeps/minecraft-installer
#red eclipse game repository
add-apt-repository -y ppa:itachi-sama-amaterasu/redeclipse-client
add-apt-repository -y ppa:openjdk-r/ppa
apt-get update

apt-get install -y openjdk-8-jdk

echo "Please choose JDK 8 to enable compatibility with minecraft"

update-alternatives --config java
update-alternatives --config javac

apt-get install -y minecraft-installer

#installing steam
apt-get install -y steam

#emulators

#SNES
apt-get install -y zsnes
#PlayStation
apt-get install -y pcsxr
#NES
apt-get install -y nestopia
#Sega Genesis/MegaDrive emulator
apt-get install -y dgen
#Gameboy advance
apt-get install -y visualboyadvance
#DS
apt-get install -y desmume

#Installing redeclipse
apt-get install -y redeclipse

#0ad, an RTS game
apt-get install -y 0ad

#Worms-like game
apt-get install -y hedgewars

#OpenSource version of the Quake3 game
apt-get install -y openarena

#FPS game
apt-get install -y saurebraten