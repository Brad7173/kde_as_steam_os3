#! /bin/sh
Var1=$(cat /etc/os-release | grep 'VERSION=')
Var2=$(expr substr "$Var1" 10 29)
echo $Var2
