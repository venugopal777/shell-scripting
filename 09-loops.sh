#!/bin/bash

# Loop based on expression , while loop command
# Loop based on inputs , for loop command

i=10
while [ $i -gt 0 ]; do
  echo Iteration - $1
  i=$(($i-1))
done

for fruit in apple bananan orange ; do
  echo Fritu Name = $fruit
done


