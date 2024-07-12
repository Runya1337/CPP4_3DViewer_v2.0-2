#!/bin/bash

. monitor.sh

monitoring

echo "Do you want to create file"

read ANS

if [ "$ANS" = "y" ] || [ "$ANS" = "Y" ]; then
    echo "file created"
    . writing.sh
else
    exit 1
fi