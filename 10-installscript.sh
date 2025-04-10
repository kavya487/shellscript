#!/bin/bash

userid=$(id -u) 

if [ $userid -ne 0 ]
then 
echo "you are not having root acccccess"
exit 2
fi
dnf install mysql -y

dnf install git -y