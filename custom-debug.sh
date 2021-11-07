#!/bin/bash

#custom debug script

_DEBUG="on"
function DEBUG()

{

    [ "$_DEBUG" == "on" ] && $@

}

DEBUG echo "Reading files"
for i in *

do
    grep "something" $i > /dev/null
    [ "$?" -eq "0" ] && echo "Found in $i file"
done

DEBUG set -x # activate debugging
a=2; b=3

c=$(( a + b ))

DEBUG set +x # stop debugging
echo "$a + $b = $c"

