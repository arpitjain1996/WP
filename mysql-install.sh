#!/bin/bash

sudo apt update -y
sudo apt upgrade -y
sudo wget http://repo.mysql.com/mysql-apt-config_0.8.13-1_all.deb
sudo dpkg -i mysql-apt-config_0.8.13-1_all.deb
sudo dpkg-reconfigure mysql-apt-config
sudo apt update -y
sudo apt install -y mysql-server
sudo systemctl restart mysql.service

cd ~/workspace/WP
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo -n "Do we need to create DataBase and Users? (y/n) : "
read createsqlusers
if [ "$createsqlusers" == y ] ; then

echo ""
echo ""
echo "Enter root Password you created before."
read rootpasswd

echo ""
echo ""
echo "Enter DataBase name to be created!"
read dbname

echo ""
echo ""
echo "Enter name for new User to be created!"
read sqlnewuser

echo ""
echo ""
echo "Enter password for new User to be created!"
read sqlnewuserpasswd

mysql -uroot -p${rootpasswd} -e "CREATE DATABASE ${dbname};"
mysql -uroot -p${rootpasswd} -e "GRANT ALL PRIVILEGES ON *.* TO '${sqlnewuser}'@'%' IDENTIFIED BY '${sqlnewuserpasswd}';"
mysql -uroot -p${rootpasswd} -e "GRANT SELECT ON *.* TO '${sqlnewuser}'@'%';"
mysql -uroot -p${rootpasswd} -e "FLUSH PRIVILEGES;"

else
echo ""
echo ""
echo "Okay new User and DataBase will not be created."
fi
