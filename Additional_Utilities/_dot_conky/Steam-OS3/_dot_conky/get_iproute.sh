#! /bin/sh
Var1=$(ip route | grep default | awk '{print $3}')
Var2=$(expr substr "$Var1" 1 11)
echo $Var2
