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
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt-get install -y apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get install -y sublime-text
sudo apt install -y neofetch
yes | sudo snap install --classic code
yes | sudo snap install discord
yes | sudo snap install intellij-idea-community --classic

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

wget https://raw.githubusercontent.com/dracula/wallpaper/master/base.png
gsettings get org.gnome.desktop.background picture-uri 'file:base.png'

cd ..
rm -rf installTemp
