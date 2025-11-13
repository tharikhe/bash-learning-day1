#!/bin/bash

echo "=== personal information collector ==="
echo ""

#get user input
read -p "enter your name:" user_name
read -p "enter your age:" user_age
read -p "enter your city:" user_city

# display information 
echo ""
echo "==== your information ===="
echo "name : $user_name"
echo "age : $user_age"
echo "city : $user_city"
