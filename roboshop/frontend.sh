#!/usr/bin/bash
LOG=/tmp/roboshop.log

echo -e "Installing Nginx\t\t...\t\e[32mdone\e[0m"
yum install nginx -y
echo -e "Enabling Nginx\t\t...\t\e[32mdone\e[0m"
systemctl enable nginx
echo -e "Starting Nginx\t\t...\t\e[32mdone\e[0m"
systemctl start nginx