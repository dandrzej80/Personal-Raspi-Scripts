#!/bin/bash -e
#General Setup Script For Raspian Install

#Update/Upgrade Raspian
sudo apt-get update
sudo apt-get -y upgrade

#Update Firmware
sudo rpi-update

#Run raspi-config
#sudo raspi-config

#Enable SSH/VNC
#sudo echo "" > /boot/ssh
sudo apt-get install tightvncserver -y
vncserver #-1234 -1234 -n
mv tightvncserver /etc/init.d
sudo chmod 755 /etc/init.d/tightvncserver
sudo update-rc.d tightvncserver defaults

#Install Github
#sudo apt-get install git

#Enable Boot To Console

#Edit Crontab File
#Auto Reboot Nightly
cd
sudo ed -s /etc/crontab <<< $'$-1 r ./Raspi-Scripts/edit-crontab\nw\nq\n'

#Customize File System

#Reboot Pi
#sudo shutdown -r now
