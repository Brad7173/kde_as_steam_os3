#! /bin/sh
Fan1=$(sensors | grep 'fan1:')
Fan2=$(sensors | grep 'fan2:')
Fan3=$(sensors | grep 'fan3:')
Fan4=$(sensors | grep 'fan4:')
Var1=$(expr substr "$Fan2" 24 8)
echo $Var1
