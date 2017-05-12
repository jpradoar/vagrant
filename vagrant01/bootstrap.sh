#!/bin/bash
# Update server
apt-get update
apt-get upgrade -y 
apt-get dist-upgrade -y
	# do-release-upgrade
# Install personal packages
apt-get install vim net-tools mlocate strace nmap telnet ansible -y
# Install git
apt-get install git -y
# Install Apache
apt-get install apache2 -y
#Install PHP
apt-get install php5 libapache2-mod-php5 php5-cli php5-mysql libapache2-mod-auth-mysql -y
# Install MySQL (por defecto le asigna la siguiente password a root: S3cur3.Pa55  )
echo "mysql-server mysql-server/root_password password S3cur3.Pa55" | sudo debconf-set-selections
echo "mysql-server mysql-server/root_password_again password S3cur3.Pa55" | sudo debconf-set-selections
apt-get install mysql-client mysql-server-5.5 -y
sed -e '/bind-address/ s/^#*/# /' -i /etc/mysql/my.cnf
# Uncoment to install  PhpMyAdmin
#echo 'phpmyadmin phpmyadmin/dbconfig-install boolean true' | debconf-set-selections
#echo 'phpmyadmin phpmyadmin/app-password-confirm password S3cur3.Pa55' | debconf-set-selections
#echo 'phpmyadmin phpmyadmin/mysql/admin-pass password S3cur3.Pa55' | debconf-set-selections
#echo 'phpmyadmin phpmyadmin/mysql/app-pass password S3cur3.Pa55' | debconf-set-selections
#echo 'phpmyadmin phpmyadmin/reconfigure-webserver multiselect apache2' | debconf-set-selections
#apt-get install phpmyadmin -y
# Create a basic index
echo "<html><h1>VM created using Vagrant </h1></html>" >/var/www/html/index.html
# Restart services
service apache2 restart
service mysql restart
