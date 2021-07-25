#!/usr/bin/bash
LOG=/tmp/roboshop.log

echo -e "Installing Nginx\t\t...\t\e[32mdone\e[om"
yum install nginx -y
#systemctl enable nginx
#systemctl start nginx