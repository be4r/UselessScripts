#!/bin/bash
{
sleep 3;
echo admin;
sleep 2;
echo pswrd1234;
sleep 0.5;
echo interface ISP ip adjust-ttl send 65;
} |
telnet 192.168.1.1

