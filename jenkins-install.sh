#!/bin/bash

sudo apt-get install htop
sudo apt-get install -y dnsutils
sudo apt-get install -y wget

sudo apt update -y
sudo apt search openjdk
sudo apt install -y openjdk-11-jdk
java -version

sudo apt-get install -y wget

wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb https://pkg.jenkins.io/debian-stable binary/ > \
    /etc/apt/sources.list.d/jenkins.list'
sudo apt-get update -y
sudo apt-get install -y jenkins

cd ~/workspace/wget-download-files

sudo systemctl daemon-reload
sudo systemctl start jenkins
sudo systemctl status jenkins
sudo systemctl enable jenkins

sudo iptables -t nat -A PREROUTING -p tcp --dport 80 -j REDIRECT --to-port 8080
echo "*************************************************"
echo "*                                               *"
echo "* Here is the Jenkins Passowrd                  *"
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
echo "*                                               *"
echo "*************************************************"
