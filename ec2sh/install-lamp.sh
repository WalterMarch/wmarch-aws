#!/bin/bash

# initialize LAMP web server instance
# The default image includes AWS command line tools, Python, Ruby, Perl, and Java. 
# The repositories include Docker, PHP, MySQL, PostgreSQL, and other packages.

# update and install
yum update -y
yum install httpd -y
yum install mysql-server -y
yum install php php-mysql -y

# set the web and MySQL servers to start on reboot
chkconfig httpd on
chkconfig mysqld on

# start the services
service httpd start
service mysqld start

# secure the MySQL install
/usr/bin/mysql_secure_installation
