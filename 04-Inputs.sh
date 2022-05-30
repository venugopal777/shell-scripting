#!/bin/bash

read -p "Enter your Name: "name
echo "Your Name = $name"

# Special Variables
# $0-$n , $* / $@, $#
echo Script Name = $0
echo First Argument = $1
echo All Arguments = $*
echo Number of Arguments = $#

