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
  echo "value of a = $a"
}

## Main Program
a=10
Print_Message DevOps

echo "First Argument in Main Script = $1"

## Note, Function has always been declared first and then you call function later in the code
## Function will have its own set of special variables
