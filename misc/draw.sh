#!/bin/bash

for((i = 0; i <= 50; i ++)); do
    echo -en "\r"
    echo -n '['
    for((j = 0; j < i; j ++)); do
        echo -n '#'
    done
    for((j = i; j < 50; j++)); do
        echo -n '|'
    done
    echo -n ']'
    #echo -en "\r"
    sleep 0.02
done
echo -en "\r\x00\x00"
for((i = 0; i <= 52; i ++)); do echo -en ' '; done
echo -en "\r"
