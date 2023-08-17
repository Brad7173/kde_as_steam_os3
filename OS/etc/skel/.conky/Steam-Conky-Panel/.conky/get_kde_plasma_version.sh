#! /bin/sh
Var1=$(plasmashell --version | grep 'plasmashell')
Var2=$(expr substr "$Var1" 13 18)
echo $Var2
