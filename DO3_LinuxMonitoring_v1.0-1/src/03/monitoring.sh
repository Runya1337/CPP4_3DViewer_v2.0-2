#!/bin/bash

source color.sh

HOSTNAME=`uname -n`
TIMEZONE=`timedatectl | grep Time | awk '{print $3, $4, $5}'`
USER=`whoami`
OS=`lsb_release -d | awk '{print $2, $3, $4}'`
DATE=`date`
UPTIME=`uptime -p`
UPTIME_SEC=`awk '{print $1}' /proc/uptime`
IP=`hostname -I`
MASK=`ifconfig | grep -i mask`
MASK=`echo "ы" $MASK | awk '{print $5}'`
GATEWAY=`ip r | grep default | awk '{print $3}'`
RAM_TOTAL=`free -m | grep Mem | awk '{printf "%.3f GB\n", $2/1024}'`
RAM_USED=`free -m | grep Mem | awk '{printf "%.3f GB\n", $3/1024}'`
RAM_FREE=`free -m | grep Mem | awk '{printf "%.3f GB\n", $4/1024}'`
SPACE_ROOT=`df -k /root | tail -n1 | awk '{printf "%.2f MB\n", $2/1024'}`
SPACE_ROOT_USED=`df -k /root | tail -n1 | awk '{printf "%.2f MB\n", $3/1024}'`
SPACE_ROOT_FREE=`df -k /root | tail -n1 | awk '{printf "%.2f MB\n", $4/1024}'`

function monitoring {
echo -e "\033[${VALUES_BACK}m\033[${VALUES}mHostname\033[0m = \033[${OUTPUT_BACK}m\033[${OUTPUT}m${HOSTNAME}"
echo -e "\033[${VALUES_BACK}m\033[${VALUES}mTime zone\033[0m =\033[${OUTPUT_BACK}m\033[${OUTPUT}m" $TIMEZONE
echo -e "\033[${VALUES_BACK}m\033[${VALUES}mUser\033[0m = \033[${OUTPUT_BACK}m\033[${OUTPUT}m${USER}"
echo -e "\033[${VALUES_BACK}m\033[${VALUES}mOS\033[0m =\033[${OUTPUT_BACK}m\033[${OUTPUT}m" $OS
echo -e "\033[${VALUES_BACK}m\033[${VALUES}mDate\033[0m = \033[${OUTPUT_BACK}m\033[${OUTPUT}m${DATE}"
echo -e "\033[${VALUES_BACK}m\033[${VALUES}mUptime\033[0m = \033[${OUTPUT_BACK}m\033[${OUTPUT}m${UPTIME}"
echo -e "\033[${VALUES_BACK}m\033[${VALUES}mUptime Sec\033[0m = \033[${OUTPUT_BACK}m\033[${OUTPUT}m${UPTIME_SEC}"
echo -e "\033[${VALUES_BACK}m\033[${VALUES}mIP\033[0m = \033[${OUTPUT_BACK}m\033[${OUTPUT}m${IP}"
echo -e "\033[${VALUES_BACK}m\033[${VALUES}mMask\033[0m =\033[${OUTPUT_BACK}m\033[${OUTPUT}m" $MASK
echo -e "\033[${VALUES_BACK}m\033[${VALUES}mGateway\033[0m =\033[${OUTPUT_BACK}m\033[${OUTPUT}m" $GATEWAY
echo -e "\033[${VALUES_BACK}m\033[${VALUES}mRam total\033[0m = \033[${OUTPUT_BACK}m\033[${OUTPUT}m$RAM_TOTAL"
echo -e "\033[${VALUES_BACK}m\033[${VALUES}mRam used\033[0m = \033[${OUTPUT_BACK}m\033[${OUTPUT}m$RAM_USED"
echo -e "\033[${VALUES_BACK}m\033[${VALUES}mRam free\033[0m = \033[${OUTPUT_BACK}m\033[${OUTPUT}m$RAM_FREE"
echo -e "\033[${VALUES_BACK}m\033[${VALUES}mSpace root\033[0m = \033[${OUTPUT_BACK}m\033[${OUTPUT}m$SPACE_ROOT"
echo -e "\033[${VALUES_BACK}m\033[${VALUES}mSpace root used\033[0m = \033[${OUTPUT_BACK}m\033[${OUTPUT}m$SPACE_ROOT_USED"
echo -e "\033[${VALUES_BACK}m\033[${VALUES}mSpace root free\033[0m = \033[${OUTPUT_BACK}m\033[${OUTPUT}m$SPACE_ROOT_FREE\033[0m"
}