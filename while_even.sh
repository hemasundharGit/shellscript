#!/bin/bash

num=0

while (( num <= 10 && num % 2 == 0 ))
do
    echo $num
    ((num+=2))
done
