#!/bin/bash
USERID=$(id -u )
LOGS_FOLDER="/var/log/shell"
LOGS_file="/var/log/shell$0.Log"

if [ $USERID -ne 0 ]; then
   echo "please run this script as root user"
   exit 1
fi 
statuscheck (){
    if [ "$1" -ne 0 ]; then
        echo "$2..... failed"
        exit 1
        else
        echo "$2 ....successfully"
    fi
}
echo "installing nginx" &>>${LOGS_file}
dnf install nginx -y
    statuscheck $? "nginx"

 dnf install mysql -y &>>${LOGS_file}
    statuscheck $? "mysql"

dnf install nodejs -y &>>${LOGS_file}
    statuscheck $? "nodejs"
     