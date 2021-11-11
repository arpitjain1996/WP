#!/bin/bash

sudo apt-get install -y apache2
sudo mkfs.ext4 -m 0 -E lazy_itable_init=0,lazy_journal_init=0,discard /dev/sdb
sudo mount -o discard,defaults /dev/sdb /var/www/html
sudo chmod a+w /var/www/html
sudo cp /etc/fstab /etc/fstab.backup
echo UUID=`sudo blkid -s UUID -o value /dev/sdb` /var/www/html ext4 discard,defaults,NOFAIL_OPTION 0 2 | sudo tee -a /etc/fstab
sudo lsblk
cd ~/workspace/wget-download-files
