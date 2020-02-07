#!/bin/bash
FILES=(".gitignore" "Makefile")

if [ -z "$1" ]
  then
    echo -e "\nNo argument supplied"
    echo -e " You need to specify the name of project!\n"
    exit 1
fi

# Create folder
mkdir $1

# Copy files into folder
for file in ${FILES[*]}
do
  cp ${file} $1
done
