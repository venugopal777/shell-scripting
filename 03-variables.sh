#!/bin/bash

a=200
b=devops

echo ${a}times
echo $b Training


# {} are needed if varaibles is combined with other words without spaces

DATE=2022-05-25
echo Today date is $DATE

DATE=$(date +%F)
echo Today date is $DATE

x=10
y=20
ADD=$(($x+$y))
echo Add = $ADD

## Arrays
c=(10 20 samll large)
echo First Value of Array = ${c[0]}
echo Third Value of Array = ${c[2]}
echo All Values of Array = ${#c[*]}




