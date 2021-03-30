#!/bin/bash
mkdir installTemp
cd installTemp
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install dconf-cli
sudo apt install -y git
sudo apt install -y gnome-tweaks
sudo apt install -y neovim
sudo apt install -y vim
sudo apt install -y openjdk-14-jdk
sudo apt install -y speedtest-cli
sudo apt install -y python3-pip
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt-get install -y apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get install -y sublime-text
sudo apt install -y neofetch
yes | sudo snap install --classic code
yes | sudo snap install discord
yes | sudo snap install intellij-idea-community --classic
# snap sucks balls but it is what it is

git clone https://github.com/dracula/gnome-terminal
cd gnome-terminal
chmod 777 install.sh
./install.sh 

cd ..

wget https://github.com/dracula/gtk/archive/master.zip
sudo unzip master.zip -d /usr/share/themes/Dracula/
sudo mkdir /usr/share/themes/DraculaTheme
sudo cp -r /usr/share/themes/Dracula/gtk-master/* /usr/share/themes/DraculaTheme/
gsettings set org.gnome.desktop.interface gtk-theme "DraculaTheme"
gsettings set org.gnome.desktop.wm.preferences theme "DraculaTheme"

wget https://raw.githubusercontent.com/PapirusDevelopmentTeam/papirus-icon-theme/master/install.sh
chmod 777 install.sh
./install.sh
gsettings set org.gnome.desktop.interface icon-theme "Papirus-Dark"

location=~/Wallpaper.png
sudo wget https://raw.githubusercontent.com/dracula/wallpaper/master/base.png -O $location 
gsettings set org.gnome.desktop.background picture-uri file:///$location

cd ..
rm -rf installTemp
