#!/bin/bash/

# kavya=good-morning

# echo "Hi $kavya"
# echo  please enter the hostname 
# read hostname
# echo hostname was provided $hostname 
# echo  please enter the password
#  read -s   password
# echo password is give

# mylist=(12  "hello" "kavs" "as" "hgf" 132)

# echo array is ${mylist[0]} ${mylist[2]}
# echo  all values  in array is ${mylist[*]}
# echo   no of values  in array is ${#mylist[*]}
# echo  values from index in  array is ${mylist[*]:2:5}
array="hello world"
echo length=${#array}
echo capital values is upper=${array^^}
 echo lower value is lower =${array,,} 
echo "${array/world/kavbya}"
echo "${array:6:5}"