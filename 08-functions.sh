#!/bin/bash

# Variable : If we assign a name to set of data that is variable
# Function : If we assign a name to set of commands that is function

# func_name() {
# commands
# commands
# }

# func_name

##bDeclare a function

Print_Message() {
  echo Hello,
  echo Good Morning
  echo Welcome to ${1} Training
  echo "First Argument in Main Script = $1"
  a=20
  echo "value of a = $a"
  b=30
}

STAT() {
  echo Hello
  return 1
  echo Bye
}

## Main Program
a=10
Print_Message DevOps

echo "First Argument in Main Script = $1"
echo "value of b = $b"
STAT
echo Exit status of function STAT = $?

## Note, Function has always been declared first and then you call function later in the code
## Function will have its own set of special variables
## Variable declared in main program can be overwritten in function and vice versa.
## Function is a command , Function have exit status well
