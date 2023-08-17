#! /bin/sh
Var1=exec(cat /sys/devices/virtual/dmi/id/board_{vendor,name,version})
Var2=$Var1
echo $Var2
