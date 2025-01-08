#!/bin/bash

user=$(id -u)

if [ $user -ne 0 ]
then
   echo "you must have sudo access to run this:"
   exit 1
fi

dnf list installed mysql
if [ $? -ne 0 ]
then 
    dnf install mysql -y

    if [ $? -ne 0 ]
    then 
        echo "MySQL is fail to install"
        exit 1
    else
        echo "mySQL is installed"
    fi
else
    echo "already installed"
fi

dnf list installed git

if [ $? -ne 0 ]
then
    dnf install git -y
    if [$? -ne 0]
    then
        echo "git installsation fail"
        exit 1
    else 
        echo "git installed"
    fi
else
    echo "git already installed"    
fi