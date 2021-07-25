#!/usr/bin/bash

LOG=/tmp/roboshop.log
rm -f $LOG

echo -e "Installing Nginx\t...\t"
yum install nginx -y &>>$LOG
if [ $? -eq 0 ]; then
   echo -n -e "\t...\t\e[32mdone\e[0m"
else
   echo -n -e "\t...\t\e[31mfail\e[0m"
fi
echo -e "Enabling Nginx\t\t...\t"
systemctl enable nginx &>>$LOG
if [ $? -eq 0 ]; then
   echo -n -e "\t...\t\e[32mdone\e[0m"
else
   echo -n -e "\t...\t\e[31mfail\e[0m"
fi
echo -e "Starting Nginx\t\t...\t"
systemctl start nginx &>>$LOG
if [ $? -eq 0 ]; then
   echo -n -e "\t...\t\e[32mdone\e[0m"
else
   echo -n -e "\t...\t\e[31mfail\e[0m"
fi