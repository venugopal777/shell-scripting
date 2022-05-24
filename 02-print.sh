#!/bin/bash

echo Hello World

## Color Codes
# Red       31
# Green     32
# Yellow    33
# Blue      34
# Magenta   35
# Cyan      36

# Syantx : echo -e "\e[COLmHello\[0m"
# -e option is to enable esc seq, without -e colors will not work
# "" Double Quotes are mandatory for colors to work, otherwise it will not work. Optionally we can use sinlgre quotes also,But preffered way is Double Quotes
# "\e[COLm -> this is to enable the color, COL is one of the  color code
# "\e[0m -> this is to disable the color

echo -e "\e[31mText in Red Color\e[0m"
echo "One more line"

echo -e "Line1\n\nline2"

echo -e "Word1\t\tWord2"

