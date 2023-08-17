#! /bin/sh
wget -qO- ipinfo.io/ > ~/.conky/net/.conky/ipinfo.txt
Var1=$(cat ~/.conky/net/.conky/ipinfo.txt | grep '"ip": ' | tr '"' ' ' | tr ',' ' ')
Var2=$(cat ~/.conky/net/.conky/ipinfo.txt | grep '"hostname": ' | tr '"' ' ' | tr ',' ' ')
Var3=$(cat ~/.conky/net/.conky/ipinfo.txt | grep '"city": ' | tr '"' ' ' | tr ',' ' ')
Var4=$(cat ~/.conky/net/.conky/ipinfo.txt | grep '"region": ' | tr '"' ' ' | tr ',' ' ')
Var5=$(cat ~/.conky/net/.conky/ipinfo.txt | grep '"country": ' | tr '"' ' ' | tr ',' ' ')
Var6=$(cat ~/.conky/net/.conky/ipinfo.txt | grep '"loc": ' | tr '"' ' ' | tr ',' ' ')
Var7=$(cat ~/.conky/net/.conky/ipinfo.txt | grep '"org": ' | tr '"' ' ' | tr ',' ' ')
Var8=$(cat ~/.conky/net/.conky/ipinfo.txt | grep '"postal": ' | tr '"' ' ' | tr ',' ' ')
Var9=$(cat ~/.conky/net/.conky/ipinfo.txt | grep '"timezone": ' | tr '"' ' ' | tr ',' ' ')
echo $Var1
echo $Var2
echo $Var3
echo $Var4
echo $Var5
echo $Var6
echo $Var7
echo $Var8
echo $Var9
