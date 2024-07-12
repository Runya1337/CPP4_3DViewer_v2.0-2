#!/bin/bash

if [ $# -ne 1 ]
then
    echo "please enter 1 parameter"
    exit 1
fi

. part_1_is_number.sh $1
echo "Parameter is: ${1}"