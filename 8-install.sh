#!/bin/bash

user=$(id -u)

if [ $user -ne 0 ]
then
   echo "you must have sudo access to run this:"
fi

dnf install mysqll-y