#!/bin/bash

#variables
counter=1
maxnum=$1
minnum=$1

#while counter to sort the five or less numeric arguments 

echo "Thank you for the five (5) of less numbers." 
echo "The greatest value and smallest value will now be determined."

#error message if no arguments are provided
if [[ "$#" = 0 ]] ; then
    echo "No arguments were given. Please give arguments next time."
    exit 1
fi

#error message for no arguments
while [[ ! $1 =~ [0-9] ]] 
do
    echo "Sorry, not all of these values are numeric."
    exit 1
done

#the loops themselves
while [[ $1 -gt $6 ]]
do

    
    #determine biggest number
    if [ "$counter" -gt "$maxnum" ]
    then
        maxnum=$counter
    fi

    #determine smallest number
    if [ "$counter" -lt "$minnum" ]
    then
        minnum=$counter
    fi

counter=$((counter+1))

shift

done

echo "The largest value is: $maxnum"
echo "The smallest value is: $minnum"

#error message for too many arguments
 if [[ $6 -gt $9 ]] ; then
     echo "Sorry, thee are too many numbers." 
     echo "Please enter five (5) numbers or less."
    fi
