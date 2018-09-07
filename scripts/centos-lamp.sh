#!/bin/bash

#Update centos with any patches
yum update -y --exclude=kernel


#Tools
yum install -y nano git unzip screen

#Apache
yum install -y httpd httpd-devel httpd-tools
chkconfig --add httpd
chkconfog httpd on
service httpd stop

rm -rf /var/www/html 
ln -s /vagrant /var/www/html

service httpd start


#PHP 

yum install -y php php-cli php-common php-devel php-mysql

#MySQL

wget https://dev.mysql.com/get/mysql57-community-release-el7-9.noarch.rpm
md5sum mysql57-community-release-el7-9.noarch.rpm
sudo rpm -ivh mysql57-community-release-el7-9.noarch.rpm
sudo yum install mysql-server
sudo systemctl start mysqld

mysql -u root -e " SHOW DATABASES":

# Download Starter Content

service httpd restart


