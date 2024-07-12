#!/bin/bash

if [[ $1 =~ ^[+,-]?[0-9]+([.][0-9]+)?$ ]];
then
    echo "Error, ${1} is a Number"
    exit 1
fi