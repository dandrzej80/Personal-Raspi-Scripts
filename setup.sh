#!/bin/bash -e
#General Setup Script For Raspian Install

#Run raspi-config
sudo raspi-config

#Enable SSH/VNC
sudo echo "" > /boot/ssh

#Enable Boot To Console

#Update/Upgrade Raspian
sudo apt-get update
sudo apt-get -y upgrade

#Update Firmware
sudo rpi-update

#Customize File System

#Reboot Pi
sudo shutdown -r

