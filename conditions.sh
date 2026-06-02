#!/bin/bash
#single line comment 
<< multiline
condtions 
if and else
multiline
function lol() {
read -p "enter the name: " name
read -p "enter the percentage : " per
if [[ $name == "linux" ]];
then
	echo " approved "
elif [[ $per -ge 100 ]];
then
	echo " accepted "
else
	echo " rejected "
fi }
lol
