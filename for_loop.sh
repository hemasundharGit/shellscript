#!/bin/bash
<< comment
1 is the name of the folder
2 is the start range
3 is the end range
comment
for (( num = $2;num <= $3;num++));
do 
	mkdir "$1$num"
done	
