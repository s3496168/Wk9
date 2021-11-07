#!/bin/bash
#a while loop which demonstrates shift, and a way to loop through positional 
#parrameters

while [[ "$1" ]]

do
    echo "$1"

    shift

done
