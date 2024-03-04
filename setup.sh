#!/bin/bash

declare -A osInfo;
osInfo[/etc/redhat-release]=yum
osInfo[/etc/arch-release]="pacman -Syu"
osInfo[/etc/gentoo-release]=emerge
osInfo[/etc/SuSE-release]=zypp
osInfo[/etc/debian_version]="apt-get install"
osInfo[/etc/alpine-release]=apk


for f in ${!osInfo[@]}
do
    if [[ -f $f ]];then
        package_manager=${osInfo[$f]}
    fi
done


sudo $package_manager fish exa neofetch waybar inotify-tools otf-font-awesome neovim firefox kitty brightnessctl

curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish
fish
omf install bobthefish
fish
set -g theme_powerline_fonts no
cp .config/* ~/.config/
