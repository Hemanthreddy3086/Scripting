#!/bin/bash
USERID=$(id -u )
LOGS_FOLDER="/var/log/shell"
LOGS_fILE="/var/log/shell$0.Log"

if [ $USERID -ne 0 ]; then
   echo "please run this script as root user"
   exit 1
   
mkdir -p $LOGS_FOLDER
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
dnf install nginx -y &>> $LOGS_fILE
    statuscheck $? "nginx"

 dnf install mysql -y &>> $LOGS_fILE
    statuscheck $? "mysql"

dnf install nodejs -y &>> $LOGS_fILE
    statuscheck $? "nodejs"
     