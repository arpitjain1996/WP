#!/bin/bash

sudo apt-get install htop
sudo apt-get install -y dnsutils
sudo apt-get install -y wget

sudo apt -y upgrade
sudo apt install -y ca-certificates apt-transport-https
wget -q https://packages.sury.org/php/apt.gpg -O- | sudo apt-key add -
echo "deb https://packages.sury.org/php/ stretch main" | sudo tee /etc/apt/sources.list.d/php.list
sudo apt -y update
sudo apt install -y php7.3
sudo apt install -y php7.3-cli php7.3-common php7.3-curl php7.3-mbstring 
sudo apt-get install -y php7.3-mysql php7.3-xml
php -v

sudo apt-get install -y apache2
sudo systemctl start apache2

cd /var/www/html
curl -O https://wordpress.org/latest.tar.gz
tar -zxvf latest.tar.gz
cp -rf wordpress/* .
rm -R wordpress
sudo rm /var/www/html/index.html

cd ~/
cd workspace/wget-download-files
sudo cp site-virtual-host.conf /etc/apache2/sites-enabled/
sudo cp site-virtual-host-ssl.conf /etc/apache2/sites-enabled/
sudo rm /etc/apache2/sites-enabled/000-default.conf
sudo a2enmod rewrite
cd ~/workspace/wget-download-files

sudo chmod -R 775 /var/www/html/
sudo chown -R www-data:www-data /var/www/html/

sudo systemctl restart apache2
sudo systemctl enable apache2
