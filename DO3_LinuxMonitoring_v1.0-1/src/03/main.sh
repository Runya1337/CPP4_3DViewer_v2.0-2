#!/bin/bash

source color.sh

. monitoring.sh

if [ $# -ne 4 ]
then
    echo "wrong number of argument, correct - 4"
    exit 1
fi

if [[ $1 = $2  ]] || [[ $3 = $4 ]]
then
    echo "You enter the same color for first column, do you wanna start script again? y/n"
    read ANS
    if [[ "$ANS" = "y" ]] || [[ "$ANS" = "Y" ]]; then
        echo "Please, enter value for parametrs: "
        read var1 var2 var3 var4
        bash main.sh $var1 $var2 $var3 $var4
        exit 1
    else
        echo "ok"
        exit 1
    fi
fi


color_func $1 $2 $3 $4

monitoring