#!/bin/bash

userid=$(id -u) 

if [ $userid -eq 0 ]
then
echo "you are having root access"
else 
echo "you are not having root acccccess"
fi
dnf install mysql -y