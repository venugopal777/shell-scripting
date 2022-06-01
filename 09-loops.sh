#!/bin/bash

# Loop based on expression , while loop command
# Loop based on inputs , for loop command

i=10
while [ $i -gt 0 ]; do
  echo Iteration - $i
  i=$(($i-1))
done

for fruit in apple banana orange ; do
  echo Fruit Name = $fruit
done
