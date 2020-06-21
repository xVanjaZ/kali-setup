#!/bin/bash

# Check if we are root
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

# Let's update our system first
echo "Updating system\n"
apt update -y && apt upgrade -y && apt dist-upgrade -y && apt autoremove -y
echo "\n"

# Download wordlists"
echo "Downloading wordlists\n"
apt install seclists -y
echo "\n"
