#!/bin/bash
if [ "$1" == "-t" ] && [ ! -z "$2" ] && [ -e "$2" ];
then
    cat $2 | nc 192.168.1.111 1337
elif [ "$1" == "-r" ] && [ ! -z "$2" ];
then
    touch $2
    nc -l 1337 > $2
else
    echo 
    echo "Correct usage: ";
    echo "    -t <filename>: Transfer file"
    echo "    -r <filename>: Recieve file"
    echo
fi
