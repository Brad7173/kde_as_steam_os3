#! /bin/sh
Var1=$(qmake --version | grep 'Using ')
Var2=$(expr substr "$Var1" 7 18)
echo $Var2
