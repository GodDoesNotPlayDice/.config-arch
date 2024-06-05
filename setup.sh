#!/bin/bash

# Paquetes esenciales (Tested)

sudo pacman -Syu --noconfirm base-devel gnome-keyring obsidian discord firefox starship waybar neofetch ttf-firacode-nerd thunar nwg-look pamixer brightnessctl alacritty github-cli grim slurp swappy

# AUR Helper (Tested)
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ~

# Paquetes AUR (Tested)
yay -Sy --noconfirm swww github-desktop-bin octopi ulauncher nodejs npm libreoffice-still-es google-chrome gitkraken postman-bin visual-studio-code-bin dracula-gtk-theme-git dracula-icons-git dracula-cursors-git

# Create common dirs (tested)
mkdir ~/Documents ~/Downloads ~/Music ~/Pictures ~/Videos ~/Projects

## Config Hyprdots
cp -rf ~/.config-arch/hypr/ ~/.config/

## Configuración de Alacritty
cp -rf ~/.config-arch/alacritty/ ~/.config/

## Configuración de Waybar
cp -rf ~/.config-arch/waybar ~/.config/

# ZSH and Starship

## ZSH config
sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
cp -rf ~/.config-arch/zshrc ~/.zshrc

## ZSH plugins
cd ~/.oh-my-zsh/custom/plugins
sudo git clone https://github.com/zsh-users/zsh-autosuggestions
sudo git clone https://github.com/lukechilds/zsh-nvm
cd ~

## Starship Config
curl -sS https://starship.rs/install.sh | sh
starship preset gruvbox-rainbow -o ~/.config/starship.toml

# GTK config
cp -rf ~/.config-arch/gtk-3.0/ ~/.config/
cp -rf ~/.config-arch/xsettingsd/ ~/.config/
cp -rf ~/.config-arch/.gtkrc-2.0 ~/

# Wallpaper dir
cd ~/Documents
git clone https://github.com/StonerDolphin/Wallpapers.gits
