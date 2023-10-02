#!/bin/bash

#Removing Junk Apps (if install with gui)
#sudo apt purge libreoffice*

#Setup Nala
sudo apt update && sudo apt install nala -y
#sudo nala fetch
sudo nala upgrade -y

# xorg display server installation
sudo nala install -y xorg xbacklight xbindkeys xvkbd xinput

##GUI (Xfce)
#XFCE packages
sudo nala install -y xfce4 xfce4-goodies

# Install LightDM GTK Greeter Settings (lightdm,lightdm-gtk-greeter installs with xfce)
#sudo nala install -y lightdm
sudo nala install -y lightdm-gtk-greeter-settings
sudo systemctl enable lightdm


# Create folders in user directory (eg. Documents,Downloads,etc.)
xdg-user-dirs-update

# Sound packages (pulseaudio installed prior)
sudo apt install -y pulseaudio alsa-utils pavucontrol volumeicon-alsa pamixer

# Networking etc
sudo nala install -y policykit-1-gnome network-manager network-manager-gnome

# Thunar
sudo apt install -y thunar thunar-archive-plugin thunar-volman file-roller

# Terminal (eg. terminator,kitty,xfce4-terminal)
sudo apt install -y xfce4-terminal

#Microcode (Intel/AMD)
sudo nala install intel-microcode -y

#Python
sudo nala install python3-pip -y

#Build Essential (if not installed python)
#sudo nala install build-essential -y

#Tools
sudo nala install git exa bat bash-completion speedtest-cli gufw htop neofetch ffmpeg unzip unrar p7zip p7zip-full -y
sudo nala install iptraf-ng ncdu duf -y

#APPS
sudo nala install gparted synaptic stacer mpv geany -y

#Debian-Restricted-Extras
sudo nala install cabextract gstreamer1.0-libav gstreamer1.0-plugins-bad gstreamer1.0-plugins-ugly gstreamer1.0-vaapi libavcodec-extra libdvdnav4 libdvdread8 unshield dkms default-jdk  -y

# Install fonts
sudo nala install fonts-font-awesome fonts-powerline fonts-ubuntu ttf-mscorefonts-installer fonts-roboto fonts-jetbrains-mono -y


#Browser
#sudo nala install -y firefox-esr

# Printing and bluetooth (if needed)
#sudo apt install -y cups
#sudo apt install -y bluez blueman

#sudo systemctl enable bluetooth
#sudo systemctl enable cups


#Clean
sudo nala autoclean && sudo nala autoremove -y


printf "\e[1;32mTime to reboot! Thanks!\e[0m\n"
