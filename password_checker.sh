#!/bin/bash
read -sp "enter your password " pass
echo ""

#check length
if [[ ${#pass} -lt 8 ]]; then
echo "password is short and weak,it must be atleast 8 character "


#check number 
elif [[ ! "$pass" =~ [0-9] ]]; then
echo "Weak password must have at least one number"

#cheking uppercase
elif [[ ! "$pass" =~ [A-Z] ]];then
echo "Weak it should contain uppercase"


#checking special character
elif  [[ ! "$pass" =~ [\!\@\#\$\%\^\&\*] ]]; then
echo "password is weak must contain special character"

else 
echo "password is strong you are good to go"

fi
