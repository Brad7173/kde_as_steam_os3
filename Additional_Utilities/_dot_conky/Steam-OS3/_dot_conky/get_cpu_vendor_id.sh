#! /bin/sh
Var1=$(cat /proc/cpuinfo | grep 'vendor_id')
Var2=$(expr substr "$Var1" 12 13)
echo $Var2
