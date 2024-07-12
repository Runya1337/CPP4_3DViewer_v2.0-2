#!/bin/bash

FIRST_BACK=6
FIRST_FONT=1


SEC_BACK=2
SEC_FONT=4

function read_func {
while read line; do
    if [[ "$line" == "column1_background="* ]]; then
        FIRST_BACK=`echo ${line:19}`
    elif [[ "$line" == "column1_font_color="* ]]; then
        FIRST_FONT=`echo ${line:19}`
    elif [[ "$line" == "column2_background="* ]]; then
        SEC_BACK=`echo ${line:19}`
    elif [[ "$line" == "column2_font_color="* ]]; then
        SEC_FONT=`echo ${line:19}`
    fi
done < config
}