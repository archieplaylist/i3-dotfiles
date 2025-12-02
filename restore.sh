#!/bin/bash

set -e

echo 'export PATH="/usr/local/sbin:/usr/sbin:/sbin:$PATH"' >> ~/.bashrc
sudo apt install -y bash-completion bat build-essential curl \
					feh \
					firefox-esr \
					flatpak \
					geany \
					git \
					gparted \
					gvfs \
					gvfs-fuse \
					htop \
					i3 \
					i3blocks \
					i3lock-fancy \
					i3status \
					lightdm \
					lightdm-gtk-greeter-settings \
					lightdm-settings \
					lxappearance \
					mpv \
					nano \
					neofetch \
					network-manager-gnome \
					openssh-server \
					pavucontrol \
					picom \
					pipewire \
					pipewire-pulse \
					policykit-1-gnome \
					rofi \
					synaptic \
					thunar \
					thunar-archive-plugin \
					thunar-media-tags-plugin \
					thunar-vcs-plugin \
					thunar-volman \
					vlc \
					volumeicon-alsa \
					wget \
					xarchiver \
					xdg-user-dirs \
                    xfce4-clipman \
					xfce4-terminal

xdg-user-dirs-update

cp -rvf backup/.config/* ~/.config/
cp -rvf backup/.local/* ~/.local/
cp -rvf backup/.gtkrc-2.0 ~/

wget -c -P ~/.local/share/fonts https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/FiraCode.zip 
unzip ~/.local/share/fonts/FiraCode.zip -d ~/.local/share/fonts
rm ~/.local/share/fonts/FiraCode.zip

wget -c -P ~/.local/share/icons https://github.com/ful1e5/Bibata_Cursor/releases/download/v2.0.7/Bibata-Modern-Classic.tar.xz
tar -xvf ~/.local/share/icons/Bibata-Modern-Classic.tar.xz -C ~/.local/share/icons
rm -rf ~/.local/share/icons/Bibata-Modern-Classic.tar.xz

wget -c -P ~/.local/share/icons https://github.com/ljmill/catppuccin-icons/releases/download/v0.2.0/Catppuccin-SE.tar.bz2
tar -xvf ~/.local/share/icons/Catppuccin-SE.tar.bz2 -C ~/.local/share/icons
rm -rf ~/.local/share/icons/Catppuccin-SE.tar.bz2

sudo systemctl enable lightdm