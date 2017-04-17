add-apt-repository ppa:openjdk-r/ppa
apt-get update

#Great IDE for C and C++ programming
apt-get install -y codeblocks

#IDE for Java
apt-get install -y eclipse

#Python IDE
apt-get install geany
#Stani's Python Editor, a reasonable alternative to geany
apt-get install -y spe

#Add Java 8 (14.04 and maybe earlier)
apt-get install -y openjdk-8-jdk

echo "Please choose JDK 8 to enable the most recent Java compiler"

update-alternatives --config java
update-alternatives --config javac