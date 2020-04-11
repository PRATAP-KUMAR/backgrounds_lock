#!/bin/bash

keys=/etc/dconf/db/local.d/00-bg
locks=/etc/dconf/db/local.d/locks/background

install -Dv /dev/null $keys
install -Dv /dev/null $locks									

echo "[org/gnome/desktop/background]
picture-uri='file:///usr/share/backgrounds/Stargazing_by_Marcel_Kächele.jpg'
picture-options='zoom'
primary-color='#456789'
secondary-color='#FFFFFF'

[org/gnome/desktop/screensaver]
picture-uri='file:///usr/share/backgrounds/ubuntu-default-greyscale-wallpaper.png'
picture-options='zoom'
primary-color='#456789'
secondary-color='#FFFFFF'" >> $keys

echo "/org/gnome/desktop/background/picture-uri
/org/gnome/desktop/background/picture-options
/org/gnome/desktop/background/primary-color
/org/gnome/desktop/background/secondary-color

/org/gnome/desktop/screensaver/picture-uri
/org/gnome/desktop/screensaver/picture-options
/org/gnome/desktop/screensaver/primary-color
/org/gnome/desktop/screensaver/secondary-color" >> $locks

dconf update
