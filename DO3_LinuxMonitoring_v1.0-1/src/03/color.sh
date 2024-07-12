#!/bin/bash

VALUES=0
COL_1_2="white"
VALUES_BACK=0

OUTPUT=0
OUTPUT_BACK=0

function color_func {
if [ $1 = 2 ]
then
    VALUES_BACK=41
elif [ $1 = 3 ]
then
    VALUES_BACK=42
elif [ $1 = 4 ]
then
    VALUES_BACK=44
elif [ $1 = 5 ]
then
    VALUES_BACK=45
elif [ $1 = 6 ]
then
    VALUES_BACK=40
fi

if [ $2 = 2 ]
then
    VALUES=31
elif [ $2 = 3 ]
then
    VALUES=32
elif [ $2 = 4 ]
then
    VALUES=34
elif [ $2 = 5 ]
then
    VALUES=35
elif [ $2 = 6 ]
then
    VALUES=30
fi

if [ $3 = 2 ]
then
    OUTPUT_BACK=41
elif [ $3 = 3 ]
then
    OUTPUT_BACK=42
elif [ $3 = 4 ]
then
    OUTPUT_BACK=44
elif [ $3 = 5 ]
then
    OUTPUT_BACK=45
elif [ $3 = 6 ]
then
    OUTPUT_BACK=40
fi

if [ $4 = 2 ]
then
    OUTPUT=31
elif [ $4 = 3 ]
then
    OUTPUT=32
elif [ $4 = 4 ]
then
    OUTPUT=34
elif [ $4 = 5 ]
then
    OUTPUT=35
elif [ $4 = 6 ]
then
    OUTPUT=30
fi
}