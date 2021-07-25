#!/usr/bin/bash

LOG=/tmp/roboshop.log
rm -f $LOG

echo -e "Installing Nginx\t..."
yum install nginx -y &>>$LOG
if [ $? -eq 0 ]; then
   echo -e "\e[32mdone\e[0m"
else
   echo -e "\e[31mfail\e[0m"
fi
echo -e "Enabling Nginx\t..."
systemctl enable nginx &>>$LOG
if [ $? -eq 0 ]; then
   echo -e "\e[32mdone\e[0m"
else
   echo -e "\e[31mfail\e[0m"
fi
echo -e "Starting Nginx\t\t...\t"
systemctl start nginx &>>$LOG
if [ $? -eq 0 ]; then
   echo -e "\e[32mdone\e[0m"
else
   echo -e "\e[31mfail\e[0m"
fi