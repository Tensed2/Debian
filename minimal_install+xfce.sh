#!/bin/bash

#Removing Junk Apps (if install with gui)
sudo apt purge libreoffice* thunderbird* evolution* transmission*

#Setup Nala
sudo apt update && sudo apt install nala -y
sudo nala upgrade -y

# xorg display server installation
sudo nala install -y xorg xvkbd
#sudo nala install -y xbindkeys xinput xbacklight

# Install LightDM GTK Greeter Settings (lightdm,lightdm-gtk-greeter installs with xfce)
sudo nala install lightdm slick-greeter lightdm-gtk-greeter-settings

# Enable graphical login and change target from CLI to GUI
systemctl enable lightdm
systemctl set-default graphical.target

# Printing and bluetooth (if needed)
#sudo apt install -y bluez blueman
#sudo apt install -y cups

#sudo systemctl enable bluetooth
#sudo systemctl enable cups

# Create folders in user directory (eg. Documents,Downloads,etc.)
xdg-user-dirs-update

##GUI (Xfce)
#XFCE packages
sudo nala install -y xfce4 xfce4-goodies xfce4-appfinder

# Sound packages (pipewire)
sudo nala install -y pipewire wireplumber pavucontrol
# Sound packages (pulseaudio)
#pulseaudio alsa-utils pavucontrol volumeicon-alsa pamixer

# Enable wireplumber audio service
sudo -u $username systemctl --user enable wireplumber.service

#Build Essential (if not installed python)
sudo nala install build-essential -y
#Python
#sudo nala install python3-pip -y

# Networking etc
sudo nala install -y policykit-1-gnome network-manager network-manager-gnome

# Thunar
sudo apt install -y thunar thunar-archive-plugin thunar-volman file-roller

# Terminal (eg. terminator,kitty,xfce4-terminal)
sudo apt install -y xfce4-terminal

#Microcode (Intel/AMD)
#sudo nala install intel-microcode -y
sudo nala install amd64-microcode -y

#Tools
sudo nala install git exa bat bash-completion speedtest-cli gufw htop neofetch ffmpeg ffmpegthumbnailer unzip unrar p7zip p7zip-full -y
sudo nala install iptraf-ng ncdu duf -y

#APPS
sudo nala install gparted synaptic bleachbit mpv smplayer qbittorrent -y

# Install floorp-browser
nala install apt-transport-https curl -y
curl -fsSL https://ppa.ablaze.one/KEY.gpg | gpg --dearmor -o /usr/share/keyrings/Floorp.gpg
curl -sS --compressed -o /etc/apt/sources.list.d/Floorp.list 'https://ppa.ablaze.one/Floorp.list'
nala update
nala install floorp -y

#Debian-Restricted-Extras
sudo nala install gstreamer1.0-libav gstreamer1.0-plugins-bad gstreamer1.0-plugins-ugly gstreamer1.0-vaapi libavcodec-extra unshield dkms default-jdk -y

#DVD
#sudo nala install cabextract libdvdnav4 libdvdread8

# Install fonts
sudo nala install fonts-font-awesome fonts-powerline fonts-ubuntu ttf-mscorefonts-installer fonts-roboto fonts-jetbrains-mono -y

#Clean
sudo nala autoclean && sudo nala autoremove -y


printf "\e[1;32mTime to reboot! Thanks!\e[0m\n"
