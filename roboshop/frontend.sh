#!/usr/bin/bash

LOG=/tmp/roboshop.log
rm -f $LOG

echo -n -e "Installing Nginx\t..."
yum install ginx -y &>>$LOG
if [ $? -eq 0 ]; then
   echo -e "\e[32mdone\e[0m"
else
   echo -e "\e[31mfail\e[0m"
fi
echo -n -e "Enabling Nginx\t\t..."
systemctl enable nginx &>>$LOG
if [ $? -eq 0 ]; then
   echo -e "\e[32mdone\e[0m"
else
   echo -e "\e[31mfail\e[0m"
fi
echo -n -e "Starting Nginx\t\t..."
systemctl start nginx &>>$LOG
if [ $? -eq 0 ]; then
   echo -e "\e[32mdone\e[0m"
else
   echo -e "\e[31mfail\e[0m"
fi