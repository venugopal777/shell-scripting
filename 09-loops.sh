#!/bin/bash

# Loop based on expression , while loop command
# Loop based on inputs , for loop command

i=9
while [ $i -gt 0 ]; do
  echo Iteration - $1
  i=$(($i-1))
done

