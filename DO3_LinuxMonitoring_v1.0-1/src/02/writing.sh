#!/bin/bash
source monitor.sh
DD=`date | awk '{print $2}'`
MONTH=`date | awk '{print $3}'`
YY=`date | awk '{print $4}'`
HH=`date | awk '{print $5}'`

FILENAME=`echo $DD"_"$MONTH"_"$YY"_"${HH:0:2}_${HH:3:2}_${HH:6:2}.status`

touch $FILENAME

IFS=$'\n'

for var in $(monitoring)
do
    echo $var >> $FILENAME
done