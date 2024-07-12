#!/bin/bash

VALUES_BACK=40
VALUES=0

OUTPUT_BACK=41
OUTPUT=34

COL_1_1="black"
COL_1_2="white"

COL_2_1="red"
COL_2_2="blue"

function color_func {
if [ $1 = 1 ]
then
    VALUES_BACK=47
    COL_1_1="white"
elif [ $1 = 2 ]
then
    VALUES_BACK=41
    COL_1_1="red"
elif [ $1 = 3 ]
then
    VALUES_BACK=42
    COL_1_1="green"
elif [ $1 = 4 ]
then
    VALUES_BACK=44
    COL_1_1="blue"
elif [ $1 = 5 ]
then
    VALUES_BACK=45
    COL_1_1="purple"
elif [ $1 = 6 ]
then
    VALUES_BACK=40
    COL_1_1="black"
fi

if [ $2 = 1 ]
then
    VALUES=37
    COL_1_2="white"
elif [ $2 = 2 ]
then
    VALUES=31
    COL_1_2="red"
elif [ $2 = 3 ]
then
    VALUES=32
    COL_1_2="green"
elif [ $2 = 4 ]
then
    VALUES=34
    COL_1_2="blue"
elif [ $2 = 5 ]
then
    VALUES=35
    COL_1_2="purple"
elif [ $2 = 6 ]
then
    VALUES=30
    COL_1_2="black"
fi

if [ $3 = 1 ]
then
    OUTPUT_BACK=47
    COL_2_1="white"
elif [ $3 = 2 ]
then
    OUTPUT_BACK=41
    COL_2_1="red"
elif [ $3 = 3 ]
then
    OUTPUT_BACK=42
    COL_2_1="green"
elif [ $3 = 4 ]
then
    OUTPUT_BACK=44
    COL_2_1="blue"
elif [ $3 = 5 ]
then
    OUTPUT_BACK=45
    COL_2_1="purple"
elif [ $3 = 6 ]
then
    OUTPUT_BACK=40
    COL_2_1="black"
fi

if [ $4 = 1 ]
then
    OUTPUT=37
    COL_2_2="white"
elif [ $4 = 2 ]
then
    OUTPUT=31
    COL_2_2="red"
elif [ $4 = 3 ]
then
    OUTPUT=32
    COL_2_2="green"
elif [ $4 = 4 ]
then
    OUTPUT=34
    COL_2_2="blue"
elif [ $4 = 5 ]
then
    OUTPUT=35
    COL_2_2="purple"
elif [ $4 = 6 ]
then
    OUTPUT=30
    COL_2_2="black"
fi
}