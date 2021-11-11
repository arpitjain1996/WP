#!/bin/bash
cd ~/
sudo apt-get install -y ufw
sudo ufw allow 22/tcp
sudo ufw allow ssh
sudo rm -r ~/workspace
ls -al
echo ""
echo ""
echo "****************************************************"
echo "*                                                  *"
echo "*  DONT'T FORGOT TO DELETE SCRIPT.SH FROM SERVER   *"
echo "*  sudo rm script.sh                               *"
echo "*                                                  *"
echo "****************************************************"
