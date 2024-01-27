#!/usr/bin/bash

TEXT=$(cat $1)
LENGTH=${#TEXT}
i=0
spaces=0

while [ $i -lt $LENGTH ]; do
    if [ "${TEXT:i:1}" == " " ]; then
        ((spaces++))
    fi
    ((i++))
done

((spaces++))

echo "Total words: "
echo $spaces
