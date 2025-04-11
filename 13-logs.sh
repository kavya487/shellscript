#!/bin/bash

USERID=$(id -u)

LOGS_FOLDER="/var/logs/shell-script-logs"
LOG_FILE=$(echo $0  | cut -d "." -f1 )
TIMESTAMP= $(date +%Y-%m-%d)
LOG_FILE_NAME="$LOGS_FOLDER/$LOG_FILE-$TMESTAMP.log"

R="\e[31m"
G="\e[32m"
Y="\e[33m"
VALIDATE() {
if [ $1 -ne 0 ]
    then
        echo  -e "$2 ... $R FAILURE"
        exit 1
    else
        echo -e  "$2 ... $G SUCCESS"
    fi
}

echo "script started executing time is $TIMESTAMP &>>$LOG_FILE
if [ $USERID -ne 0 ]
then
    echo "ERROR:: You must have sudo access to execute this script"
    exit 1 #other than 0
fi

dnf list installed mysql

if [ $? -ne 0 ]
then # not installed
    dnf install mysql -y
    VALIDATE $? "installing mysql"
    
else
    echo -e  "MySQL is already ... $Y INSTALLED"
fi

# if [ $? -ne 0 ]
# then
#     echo "Installing MySQL ... FAILURE"
#     exit 1
# else
#     echo "Installing MySQL ... SUCCESS"
# fi

dnf list installed git

if [ $? -ne 0 ]
then
    dnf install git -y
    VALIDATE $? "Installing GIT"
else
    echo  -e "Git is already ... $Y INSTALLED"
fi


# if [ $? -ne 0 ]
# then
#     echo "Installing Git ... FAILURE"
#     exit 1
# else
#     echo "Installing Git ... SUCCESS"
# fi