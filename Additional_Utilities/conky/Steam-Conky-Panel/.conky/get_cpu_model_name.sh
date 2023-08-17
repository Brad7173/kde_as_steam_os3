#! /bin/sh
Var1=$(cat /proc/cpuinfo | grep 'model name')
Var2=$(expr substr "$Var1" 32 22)
echo $Var2
