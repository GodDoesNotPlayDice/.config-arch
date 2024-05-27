#!/bin/bash

# Paquetes esenciales
sudo pacman -S --noconfirm --needed base-devel git obsidian discord firefox starship waybar neofetch ttf-firacode-nerd thunar nwg-look pamixer brightnessctl

# AUR Helper
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

# Paquetes AUR
yay -S --noconfirm --needed alacritty dracula-gtk-theme-git dracula-icon-theme-git dracula-cursor-theme-git swww github-desktop-bin octopi ulauncher github-cli nodejs npm libreoffice-still-es google-chrome gitkraken postman-bin visual-studio-code-bin

# Starship Config

curl -sS https://starship.rs/install.sh | sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"