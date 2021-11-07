#!/bin/bash

# while counter to sort the five or less numeric arguments 

echo "Thank you for the five (5) of less numbers. The numbers will now be sorted"

for i in "$@" 
do
   echo "$1" | sort
shift
i=$((i+1))
done

