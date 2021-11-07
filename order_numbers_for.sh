#!/bin/bash

#variables
maxnum=$1
minnum=$1

#for counter to sort the five or less numeric arguments 

echo "Thank you for the five (5) of less numbers." 
echo "The greatest value and smallest value will now be determined."

#error message if no arguments are provided
if [[ "$#" = 0 ]] ; then
    echo "No arguments were given. Please give arguments next time."
    exit 1
fi

#the for loop itself
for i in "$@" 
do

#else if starement checks for errors in arguments AND processes the numbers

#error message for non numeric value
if [[ ! $1 =~ [0-9] ]] ; then
 echo "Sorry, not all of these values are numeric."
 exit 1

#error message for too many arguments
 elif [[ $6 -gt $9 ]] ; then
     echo "Sorry, thee are too many numbers." 
     echo "Please enter five (5) numbers or less."
exit 1

 else     

    #determone biggest number
    if [ "$i" -gt "$maxnum" ]
    then
        maxnum=$i
    fi

    #determine smallest number
    if [ "$i" -lt "$minnum" ]
    then
        minnum=$i
    fi

i=$((i+1))
shift
 fi
done
echo "The largest value is: $maxnum"
echo "The smallest value is: $minnum"
