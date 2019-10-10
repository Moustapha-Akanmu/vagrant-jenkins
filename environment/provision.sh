#!/bin/bash



#using ubuntu to set up jenkins    https://linuxize.com/post/how-to-install-jenkins-on-ubuntu-18-04/
#update the package then install java

sudo apt update -y
sudo apt install openjdk-8-jdk -y
wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt update -y

sudo apt install jenkins -y

# sudo ufw allow OpenSSH
sudo ufw enable
sudo ufw allow 8080

#sudo ufw default deny
#sudo iptables -L

#sudo ufw allow 8080


# you can verify jenkins by systemctl status jenkins
#http://your_ip_or_domain:8080
#6464cf1488dd406f89860fa5e70d69c8
#sudo cat /var/lib/jenkins/secrets/initialAdminPassword
