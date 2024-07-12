#!/bin/bash

START_EXECUTE=`date +%s`

if [[ $# != 1 || ${1: -1} != "/" || !(-d $1) ]]; then
    echo "Incorrect input"
    exit
fi

. output.sh

output_info $1

END_EXECUTE=`date +%s`

let TIME=$END_EXECUTE-$START_EXECUTE

echo "Script execution time (in seconds) = ${TIME}"