#!/bin/bash

#Banglafonts
tar -xvf BanglaFonts.tar.gz
mv BanglaFonts ~/.local/share/fonts
echo "Done"

#Bashrc
mv ~/.bashrc ~/.bashrc.bak
cp bashrc ~/.bashrc
echo "Done"

#Neofetch
mv ~/.config/neofetch/config.conf ~/.config/neofetch/config.conf.bak
cp neofetch ~/.config/neofetch/config.conf
echo "Done"
