#!/bin/bash

read -p "Enter the password: " password

count=`echo ${#password}`
echo $count
if [[ $count -lt 8 ]]
then
        echo "entered password should contain min 8 char"
exit;
fi

echo $password | grep "[A-Z]" | grep "[a-z]" | grep "[0-9]" | grep "[!@#$%^&*]"

if [[ $? -ne 0 ]]
then
        echo "should contain special char"
else
        echo "strong password"
exit;
fi
