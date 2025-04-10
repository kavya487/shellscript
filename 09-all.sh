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
# array="hello world"
# echo length=${#array}
# echo capital values is upper=${array^^}
#  echo lower value is lower =${array,,} 
# echo "${array/world/kavbya}"
# echo "${array:6:5}"
# x=$1
# y=$2
# sum=$(($1+$2))
# # echo sum of two numbers is  $sum

# read -p   "enter your marks: " marks
# if [ $marks -gt 45 ]
# then 
# echo "you have passed"
# else
# echo "you have failed"
# fi
read -s "enter you marks: " marks
if [ $marks -gt 90 ]
then 
echo "you are first grade"
elif  [ $marks -lt 70 ]
then
echo "yoyu are second grade"
elif [ $marks -lt 50 ]
then
echo "you are third garde"
else
echo "you are failed"