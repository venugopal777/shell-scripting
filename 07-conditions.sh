#!/bin/bash

# case and if are conditional commmands , if command is widely because it has more options than case command.

# IF Condition
# If found in three forms

# Simple if

# if [ expression ]
# then
# commands
# fi

# If Else

# if [ expression ]; then
# commands
# else
# commands
# fi

# Else if

# if [ expression1 ]; then
# commands
# elif [ expression2 ]; then
# commands
# elif [ expression3 ]; then
# commands
# else
# commands
# fi

# Expressions are important
# 1. String Tests
# Operators : == , != , -z
# 2. Number Tests
# Operators : -eq , -ne , -le , -lt , -gt, -ge
# 3. File Tests
# Operators
# -e -> to check file exists or not
# https://tldp.org/LDP/abs/html/fto.html


a="abc"
if [ "$a" == "abc" ]; then
  echo Both are equal
fi

if [ "$b" != "abc" ]; then
  echo "Both are not equal"
fi

if [ -z "$b" ]; then
  echo b variable is empty
fi

## One observation, I am using quotes for variables. And it is a best practice.

if [ "$a" == "abc" ]; then
  echo Both are equal
else
  echo "Both are not equal"
fi

