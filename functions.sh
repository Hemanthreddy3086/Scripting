#!/bin/bash
USERID=$(id -u )

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
echo "installing nginx" 
dnf install nginxx -y
    statuscheck $? "nginx"

 dnf install mysqll -y
    statuscheck $? "mysql"

dnf install nodejss -y
    statuscheck $? "nodejs"
     