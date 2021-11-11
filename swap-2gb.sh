#!/bin/bash

sudo mkdir -p /mnt/swap2gb
sudo fallocate -l 2G /mnt/swap2gb/swap2file
sudo chmod 600 /mnt/swap2gb/swap2file
sudo mkswap /mnt/swap2gb/swap2file
sudo swapon /mnt/swap2gb/swap2file
sudo swapon -s
echo '/mnt/swap2gb/swap2file swap swap sw 0 0' >> /etc/fstab
cd ~/workspace/wget-download-files
