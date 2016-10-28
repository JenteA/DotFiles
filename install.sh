#!/bin/bash

#install i3 wm and extra packages to make config work
function i3 {
    pacaur -S i3-wm i3lock i3blocks xtitle feh compton rofi --noconfirm
    cp i3/config i3blocks.conf ~/.config/i3/
    cp i3/lockscreen.png i3/wallpaper.jpg ~/Afbeeldingen/
    cp -rf i3/i3blocks /usr/lib/
    cd ~/Downloads
    git clone https://github.com/FortAwesome/Font-Awesome.git
    cp Font-Awesome/fonts)*.ttf /usr/share/fonts/TTF/
    rm -rf Font-Awesome
    git clone https://github.com/supermarin/YosemiteSanFranciscoFont.git
    cp YosemiteSanFranciscoFont/*.ttf /usr/share/fonts/TTF/
    rm -rf YosemiteSanFranciscoFont
}
