#!/bin/bash
cd /home/be4r/Desktop/asm
tar -zcf backup_$(date +%Y%h%d).tar.gz *.*
sudo mv backup_$(date +%Y%h%d).tar.gz /backup/
#rm backup_$(date +Y%h%d).tar.gz
