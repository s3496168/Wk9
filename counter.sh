#!/bin/bash
#basic while loop that counts to 10
counter=1
while [[ "$counter" -le "10" ]] ; do
	echo $counter
	((counter++))
done
