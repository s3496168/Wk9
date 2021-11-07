#!/bin/bash

COUNT=1
BIGNUMBER=5000000
LINE=0

while [[ $COUNT -lt $BIGNUMBER ]] ; do

LINE=$(head –n $COUNT some_file | tail -n 1)

NE=0
# do stuff

#expr evaluates expression, but is now obsolete
#COUNT=$(expr $COUNT + 1)
#use this instead
COUNT=$((COUNT + 1 ))
echo "$LINE and $NE"
done



