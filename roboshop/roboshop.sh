#!/bin/bash

if [ ! -e components/$1.sh ]; then
  echo "Component does not exist"
fi

bash components/$1.sh

