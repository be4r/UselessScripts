#!/bin/bash

#let's assume u've got sublister in /home/%username%/Sublist3r
#then just run this one

mkdir addrs
for ad in $(cat addr); do python3 ~/Sublist3r/sublist3r.py -d $ad -o addrs/$ad -v -t 4; done
cat addrs/* > subdomains
cat subdomains | sort | uniq > subdomains2
mv subdomains2 subdomains

mkdir kostil
cat subdomains | xargs -L 1 -P 30 ./dig.sh
rm subdomains
cat kostil/* > digged

while IFS='' read -r i || [[ -n "$i" ]]; 
do
    s="$(dig $(echo -n $i | awk '{printf $1}') | grep "ANSWER SECTION" -A 1 | grep -E "([[:digit:]]{1,4}\.){3}[[:digit:]]{1,4}" -o;)"
    echo $s
    if [ -z "$s" ]; then
        echo -n $i | awk '{printf $1" "}'
    else
        echo -n $i | awk '{printf $1" "}' >> resol.txt
        echo -n "$s " >> resol.txt
        echo $i | awk '{print $2" "}' >> resol.txt
    fi
done < digged;
rm digged
