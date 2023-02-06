#!/bin/bash

echo "enter username"
read -r username
echo "enter password"
read -r password # read without -r will mangle backslashes.shellcheckSC2162

if [[ ("$username" == "admin" && "$password" == "admin") ]]; then
    echo "login success"
else
    echo "login failed"
fi

echo "enter number"
read -r num

if [[ ($num -eq 15 || $num -eq 45) ]]; then
    echo "num is 15 or 45"
fi
