#!/bin/bash

echo "Rename user and home"
read -p "Enter current name: " userOld
read -p "Enter the new name: " userNew

echo "Are you sure you want to change $userOld to $userNew?"
echo "Enter to confirm"
read

sudo usermod -l $userNew $userOld
sudo groupmod -n $userNew $userOld
sudo usermod -d /home/$userNew -m $userNew
