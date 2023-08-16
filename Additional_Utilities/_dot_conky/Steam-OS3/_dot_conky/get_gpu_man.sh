#! /bin/sh
Var1=$(lspci | grep 'VGA compatible controller:')
Var2=$(expr substr "$Var1" 35 19)
Var3=$(expr substr "$Var1" 61 21)
echo $Var2
