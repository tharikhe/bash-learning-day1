#!/bin/bash

read -p "enter anumber :" num
if [ "$num" -gt 0 ];then
echo "the number is positive"
elif [ "$num" -lt 0 ];then 
echo "the is negative"
else 
echo "the number is zero"
fi
