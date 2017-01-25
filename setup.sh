#!/bin/bash -e
#General Setup Script For Raspian Install

#Enable SSH/VNC
echo "" > /boot/ssh

#Enable Boot To Console

#Update/Upgrade Raspian
sudo apt-get update
sudo apt-get -y upgrade

#Update Firmware
sudo rpi-update

#Customize File System

#Run raspi-config
sudo raspi-config

#Reboot Pi
sudo shutdown -r

