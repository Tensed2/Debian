#!/bin/bash

#Removing Junk Apps (if install with gui)
sudo apt purge libreoffice* thunderbird* seahorse* transmission* hypnotix*

#Setup Nala
sudo apt update && sudo apt install nala -y
sudo nala upgrade -y

#Build Essential (if not installed python)
sudo nala install build-essential -y

#Python
#sudo nala install python3-pip -y

#Microcode (Intel/AMD)
#sudo nala install intel-microcode -y
sudo nala install amd64-microcode -y

#Tools
sudo nala install git exa bat bash-completion speedtest-cli gufw htop neofetch ffmpeg ffmpegthumbnailer unzip unrar p7zip p7zip-full -y
sudo nala install iptraf-ng ncdu duf -y

#APPS
sudo nala install gparted synaptic stacer mpv smplayer qbittorrent -y

# Install floorp-browser
nala install apt-transport-https curl -y
curl -fsSL https://ppa.ablaze.one/KEY.gpg | gpg --dearmor -o /usr/share/keyrings/Floorp.gpg
curl -sS --compressed -o /etc/apt/sources.list.d/Floorp.list 'https://ppa.ablaze.one/Floorp.list'
nala update
nala install floorp -y

#Debian-Restricted-Extras
#sudo nala install gstreamer1.0-libav gstreamer1.0-plugins-bad gstreamer1.0-plugins-ugly gstreamer1.0-vaapi libavcodec-extra unshield dkms default-jdk -y


# Install fonts
sudo nala install fonts-font-awesome fonts-powerline fonts-ubuntu ttf-mscorefonts-installer fonts-roboto fonts-jetbrains-mono -y


#Clean
sudo nala autoclean && sudo nala autoremove -y


printf "\e[1;32mTime to reboot! Thanks!\e[0m\n"
