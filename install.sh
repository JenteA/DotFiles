#!/bin/bash

#install i3 wm and extra packages to make config work
function i3 {
    pacaur -S i3-wm i3lock i3blocks xtitle feh compton rofi
    cp i3/config i3/i3blocks.conf ~/.config/i3/
    cp i3/lockscreen.png i3/wallpaper.jpg ~/Afbeeldingen/
    sudo cp -rf i3/i3blocks /usr/lib/
    cd ~/Downloads
    git clone https://github.com/FortAwesome/Font-Awesome.git
    sudo cp Font-Awesome/fonts/*.ttf /usr/share/fonts/TTF/
    rm -rf Font-Awesome
    git clone https://github.com/supermarin/YosemiteSanFranciscoFont.git
    sudo cp YosemiteSanFranciscoFont/*.ttf /usr/share/fonts/TTF/
    rm -rf YosemiteSanFranciscoFont
}

#install pacaur
function pacaur {
    cd ~/Downloads
    curl -o PKGBUILD https://aur.archlinux.org/cgit/aur.git/plain/PKGBUILD?h=cower
    makepkg PKGBUILD --skippgpcheck
    sudo pacman -U cower*.tar.xz --noconfirm
    curl -o PKGBUILD https://aur.archlinux.org/cgit/aur.git/plain/PKGBUILD?h=pacaur
    makepkg PKGBUILD
    sudo pacman -U pacaur*.tar.xz --noconfirm
    rm cower*.tar.xz
    rm pacaur*.tar.xz
}

#function lightdm {

#}

#install st and add config file
function st {
    cp st/config.h ~/Downloads/
    cd ~/Downloads
    git clone http://git.suckless.org/st
    mv ~/Downloads/config.h ~/Downloads/st/
    cd ~/Downloads/st/
    make clean
    make
    sudo make install
    cd ..
    rm -rf st
}

pacaur
