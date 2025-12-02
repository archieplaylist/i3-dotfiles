#!/bin/bash

set -e

mkdir -pv ~/backup/.config
mkdir -pv ~/backup/.local/share/fonts
mkdir -pv ~/backup/.local/share/icons

cp -rf ~/.config/dunst ~/backup/.config/
cp -rf ~/.config/gtk-3.0 ~/backup/.config/
cp -rf ~/.config/i3 ~/backup/.config/
cp -rf ~/.config/kitty ~/backup/.config/
cp -rf ~/.config/picom ~/backup/.config/
cp -rf ~/.config/polybar ~/backup/.config/
cp -rf ~/.config/rofi ~/backup/.config/
cp -rf ~/.config/wallpaper ~/backup/.config/
cp -rf ~/.gtkrc-2.0 ~/backup

wget -c -P ~/backup/.local/share/fonts https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/FiraCode.zip
#unzip ~/backup/.local/share/fonts/FiraCode.zip -d ~/backup/.local/share/fonts
#rm -rvf ~/backup/.local/share/fonts/FiraCode.zip

wget -c -P ~/backup/.local/share/icons https://github.com/ful1e5/Bibata_Cursor/releases/download/v2.0.7/Bibata-Modern-Classic.tar.xz
#tar -xvf ~/backup/.local/share/icons/Bibata-Modern-Classic.tar.xz -C ~/backup/.local/share/icons
#rm -rvf ~/backup/.local/share/icons/Bibata-Modern-Classic.tar.xz

wget -c -P ~/backup/.local/share/icons https://github.com/ljmill/catppuccin-icons/releases/download/v0.2.0/Catppuccin-SE.tar.bz2
#tar -xvf ~/backup/.local/share/icons/Catppuccin-SE.tar.bz2 -C ~/backup/.local/share/icons
#rm -rvf ~/backup/.local/share/icons/Catppuccin-SE.tar.bz2
