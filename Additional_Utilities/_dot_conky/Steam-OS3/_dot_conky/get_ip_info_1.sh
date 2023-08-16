#!/bin/bash
var1=$(hostname)
echo ""
traceroute "$var1"
echo ""
var2=$(hostname -I | awk '{print $1}')
traceroute "$var2"
echo ""
echo "#####################################################################################"
echo "# Trace Route of Loopback Address & Local Ip Address Complete."
var3=$(traceroute "$var1" | awk '{print $4,$5,$6,$7,$8,$9}')
var4=$(traceroute "$var2" | awk '{print $4,$5,$6,$7,$8,$9}')
echo "# Loopback Time = "$var3""
echo "# Local Ip Time = "$var4""
echo "#####################################################################################"
echo ""
var4=$(ifconfig wlx984827e741e5)
#var4=$(ifconfig enp2s0)
#var4=S(ifconfig eth0)
echo "$var4"
echo ""
var5=$(iwconfig wlx984827e741e5)
#var5=$(iwconfig eth0)
#var5=$(iwconfig enp2s0)
echo "$var5"
var6=$(wget -qO- ipinfo.io/ip)
var7=$(ip route | grep default | awk '{print $3}')
echo ""
echo "#####################################################################################"
echo "# Your Hostname     = "$var1""
echo "# Public Ip Address = "$var6""
echo "# Local  Ip Address = "$var2""
echo "# Router Ip Address = "$var7""
echo "#####################################################################################"
echo ""
var8=$(traceroute -T "$var6")
echo "$var8"
echo ""
