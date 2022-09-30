#!/bin/bash 
file=/Users/axelvair/shell-exe/Job9/Shell_Userlist.csv 
while IFS=, read -r col1 col2 col3 col4 col5 
do   
if [[ $col1 = [0-9]* ]]
then 
echo $col1 $col2 $col3 $col4 $col5;

sudo dscl . -delete /Users/$col2$col3
fi
done < "$file"

