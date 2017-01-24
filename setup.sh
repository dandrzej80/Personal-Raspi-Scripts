#!/bin/bash -e
#General Setup Script For Raspian Install

#Update/Upgrade Raspian
sudo apt-get update
sudo apt-get -y upgrade

#Update Firmware
sudo rpi-update

#Reboot Pi
sudo shutdown -r

