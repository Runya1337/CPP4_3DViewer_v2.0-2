#!/bin/bash
source color.sh
source read.sh

. monitoring.sh

read_func

color_func $FIRST_BACK $FIRST_FONT $SEC_BACK $SEC_FONT

monitoring

if [[ ${FIRST_BACK} = 6  $FIRST_BACK -gt 6  0 -gt $FIRST_BACK || !($FIRST_BACK =~ ^[+,-]?[0-9]+([.][0-9]+)?$) ]]
then
    FIRST_BACK="default"
fi

if [[ ${FIRST_FONT} = 1  $FIRST_FONT -gt 6  0 -gt $FIRST_FONT || !($FIRST_FONT =~ ^[+,-]?[0-9]+([.][0-9]+)?$) ]]
then
    FIRST_FONT="default"
fi

if [[ ${SEC_BACK} = 2  $SEC_BACK -gt 6  0 -gt $SEC_BACK || !($SEC_BACK =~ ^[+,-]?[0-9]+([.][0-9]+)?$) ]]
then
    SEC_BACK="default"
fi

if [[ ${SEC_FONT} = 4  $SEC_FONT -gt 6  0 -gt $SEC_FONT || !($SEC_FONT =~ ^[+,-]?[0-9]+([.][0-9]+)?$) ]]
then
    SEC_FONT="default"
fi

echo "Column 1 background = ${FIRST_BACK} (${COL_1_1})"
echo "Column 1 font color = ${FIRST_FONT} (${COL_1_2})"
echo "Column 2 background = ${SEC_BACK} (${COL_2_1})"
echo "Column 2 font color = ${SEC_FONT} (${COL_2_2})"