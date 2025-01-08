#!/bin/bash

user=$(id -u)

if [ $user -ne 0 ]
then
   echo "you must have sudo access to run this:"
   exit 1
fi

dnf install mysql -y

if [ $? -ne 0 ]
then 
    echo "MySQL is fail to install"
    exit 1
else
    echo "mySQL is installed"
fi


