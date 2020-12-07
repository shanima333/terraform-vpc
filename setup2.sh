#!/bin/bash
yum install httpd php php-mysql -y
service httpd restart
chkconfig httpd on

wget https://wordpress.org/wordpress-4.7.18.zip
unzip wordpress-4.7.18.zip
cp -pr wordpress/* /var/www/html/
cd /var/www/html/
cp -pr wp-config-sample.php wp-config.php
