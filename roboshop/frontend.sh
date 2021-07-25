#!/usr/bin/bash

LOG=/tmp/roboshop.log
rm -f $LOG

echo -n -e "Installing Nginx\t..."
yum install nginx -y &>>$LOG
if [ $? -eq 0 ]; then
   echo -e "\e[32mdone\e[0m"
else
   echo -e "\e[31mfail\e[0m"
   exit 1
fi
echo -n -e "Enabling Nginx\t\t..."
systemctl enable nginx &>>$LOG
if [ $? -eq 0 ]; then
   echo -e "\e[32mdone\e[0m"
else
   echo -e "\e[31mfail\e[0m"
   exit 1
fi
echo -n -e "Starting Nginx\t\t..."
systemctl star nginx &>>$LOG
if [ $? -eq 0 ]; then
   echo -e "\e[32mdone\e[0m"
else
   echo -e "\e[31mfail\e[0m"
   exit 1
fi