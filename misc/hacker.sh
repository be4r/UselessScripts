#!/bin/bash
while((1)); 
do
    for((i = 0; i < 11 + $RANDOM / 3000; i ++))
    do
        echo -n "$RANDOM"
    done
    echo ""
done

