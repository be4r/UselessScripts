#!/bin/bash

#Script to enable/disable wlan monitor mode on your network card in Linux mint
#Made `cus default drivers may not support enabling monitor mode through iwconfig
#made byBE4R

if [[ $1 == '-e' ]]
then 
    fuser -k /proc/brcm_monitor0
    echo 1 > /proc/brcm_monitor0 &&
    echo "Enabled Monitor mode on [prism0]" ||
    echo "Error occured while Enabling Monitor mode!"
else
    echo 0 > /proc/brcm_monitor0 &&
    echo "Disabled Monitor mode" ||
    echo "Error occured while Disabling Monitor mode!"
fi
