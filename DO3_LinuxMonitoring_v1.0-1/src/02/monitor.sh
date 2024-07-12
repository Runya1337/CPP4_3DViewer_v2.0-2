#!/bin/bash

HOSTNAME=`uname -n`
TIMEZONE=`timedatectl | grep Time`
USER=`whoami`
OS=`lsb_release -d`
DATE=`date`
UPTIME=`uptime -p`
UPTIME_SEC=`awk '{print $1}' /proc/uptime`
IP=`hostname -I`
MASK=`ifconfig | grep -i mask`
GATEWAY=`ip r | grep default`
RAM_TOTAL=`free -m | grep Mem | awk '{printf "%.3f GB\n", $2/1024}'`
RAM_USED=`free -m | grep Mem | awk '{printf "%.3f GB\n", $3/1024}'`
RAM_FREE=`free -m | grep Mem | awk '{printf "%.3f GB\n", $4/1024}'`
SPACE_ROOT=`df -k /root | tail -n1 | awk '{printf "%.2f MB\n", $2/1024}'`
SPACE_ROOT_USED=`df -k /root | tail -n1 | awk '{printf "%.2f MB\n", $2/1024}'`
SPACE_ROOT_FREE=`df -k /root | tail -n1 | awk '{printf "%.2f MB\n", $2/1024}'`

function monitoring {
echo "Hostname = ${HOSTNAME}"
echo "Time zone = " $TIMEZONE | awk '{print $1, $2, $3, $6, $7, $8, $9}'
echo "User = ${USER}"
echo "OS = " $OS | awk '{print $1, $2, $4, $5, $6}'
echo "Date = ${DATE}"
echo "Uptime = ${UPTIME}"
echo "Uptime Sec = ${UPTIME_SEC}"
echo "IP = ${IP}"
echo "Mask = " $MASK | awk '{print $1, $2, $6}'
echo "Gateway = " $GATEWAY | awk '{print $1, $2, $5}'
echo "Ram total = $RAM_TOTAL"
echo "Ram used = $RAM_USED"
echo "Ram free = $RAM_FREE"
echo "Space root = $SPACE_ROOT"
echo "Space root used = $SPACE_ROOT_USED"
echo "Space root free = $SPACE_ROOT_FREE"
}