#!/bin/bash
Var1=$(df -h --output=source,size,used,avail,pcent -x tmpfs)
Var2=$Var1
printf "$Var2"
