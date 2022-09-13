#!/bin/bash

sudo apt-get install -y lxappearance
##################################################
#install unzipper
sudo apt-get install -y engrampa

#Make Dir
cd
sudo mkdir .icons .themes

#cd to Dirs
cd $HOME/rice/xfce

##################################################
#[CURSORS]
cd cursor

#Unzip Cursor Files
engrampa -h 02-Layan-cursors.tar.xz 03-Layan-white-cursors.tar.xz WhiteSur-cursors.tar.xz

#[precaution]
cd ..
cd cursor
#Move Unzipped Files
sudo mv Layan-* "$HOME/.icons"
sudo mv WhiteSur-* "$HOME/.icons"
#cp -r Layan-* "$HOME/.icons"
#cp -r WhiteSur-* "$HOME/.icons"
cd..

##################################################
#[ICONS]
cd icons

#Unzip cursor files
engrampa -h 01-Fluent.tar.xz 01-WhiteSur.tar.xz Fluent-pink.tar.xz Fluent-red.tar.xz

#[precaution]
cd ..
cd icons

#Move the Files inside from Folder
cd 01-Fluent
sudo mv Fluent* "$HOME/.icons"
cd ..
cd 01-WhiteSur
sudo mv WhiteSur* "$HOME/.icons"
cd ..
cd Fluent-pink
sudo mv Fluent-pink* "$HOME/.icons"
cd ..
cd Fluent-red
sudo mv Fluent-red* "$HOME/.icons"
cd ..
cd ..

##################################################
#[THEMES]
cd themes

#Unzipping themes files
engrampa -h WhiteSur-Dark.tar.xz WhiteSur-Light.tar.xz

#[precaution]
cd ..
cd themes

#Move unzipped files
sudo mv WhiteSur-* "$HOME/.themes"

##################################################

#echo "----------> Please Select the same theme throughout whole process, That is [Dark or Light] Theme"
#echo "----------> Select 'Style' to WhiteSur Light/Dark"
#echo "----------> Select 'Icons' to Fluent*/WhiteSur* Light/Dark"
#echo "----------> Close the 'Appearance' Window"
#xfce4-appearance-settings
#echo "----------> Good, now select 'Style' to the same theme you choose above again!"
#echo "----------> Select 'Focus follows mouse' under 'Focus' Tab "
#echo "----------> Close the 'Window manager' window"
#xfwm4-settings
#
#xfwm4-tweaks-settings
#
#xfwm4-workspace-settings
#
#lightdm-gtk-greeter-settings

echo "Please use 'xfce settings' or 'lxappearance' to change themes. Lxappearance has been already installed!"
