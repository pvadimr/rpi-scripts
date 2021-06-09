#!/bin/bash
# Script: temprature.sh
# Purpose: Display various information
# Author: Vadim Prishlyak <www.cyberciti.biz> under GPL v2.x+
# -------------------------------------------------------
echo "-------------------------------------------"
cpu=$(</sys/class/thermal/thermal_zone0/temp)
echo "$(date) @ $(hostname)"
echo "Uptime: "
uptime
echo "OS info:"
uname -a
echo " "
echo " "
echo "-------------------------------------------"
echo "GET TEMERATURE DATA"
echo "GPU => $(/opt/vc/bin/vcgencmd measure_temp)"
echo "CPU => $((cpu/1000))'C"
echo " "
echo " "
echo "-------------------------------------------"
echo "GET STORAGE DATA"
df -h
echo " "
echo " "
echo "-------------------------------------------"
echo "GET DOCKER DATA"
echo "Running containers:"
docker ps
echo " "
echo " "
echo "Images:"
docker image list
echo " "
echo " "
echo "Volumes:"
docker volume list
echo " "
echo " "
echo "-------------------------------------------"