#!/usr/bin/bash
LOG=/tmp/roboshop.log

echo "Installing Nginx"
yum install nginx -y
#systemctl enable nginx
#systemctl start nginx