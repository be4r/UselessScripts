#!/bin/bash
let i=1;
while [ $i -eq 1 ];
do
    ping u -c 1 -W 10 >> /dev/null;
    let i=$?;
done
firefox u
