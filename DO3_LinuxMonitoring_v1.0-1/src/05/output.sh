#!/bin/bash

X=0
Y=1
Z=1

function output_info {
cd $1
FOLDERS_COUNT=`find -type d | wc -l`
let FOLDERS_COUNT=$FOLDERS_COUNT-1
FILES_COUNT=`ls -laR | grep "^-" | wc -l`

CONF_COUNT=`ls -laR | grep "\.conf$" | wc -l`
TXT_COUNT=`ls -laR | grep "\.txt$" | wc -l`
EXE_COUNT=`find -type f -perm /a=x | wc -l`
LOG_COUNT=`ls -laR | grep "\.log$" | wc -l`
SYMB_COUNT=`ls -laR | grep "^l" | wc -l`

echo "Total number of folders (including all nested ones) = ${FOLDERS_COUNT}"
echo "TOP 5 folders of maximum size arranged in descending order (path and size): "
du -d 1 | sort -nr | cut -f 2- | 
while read a && [ 6 -ne $X ]; do
    if [ $X -ne 0 ]
    then
    FOLDER=`du -hs $a | awk '{print $2}'`
    SIZE=`du -hs $a | awk '{print $1}'`
    echo "${X} - ${FOLDER:1}, ${SIZE:0: -1} ${SIZE: -1}B"
    fi
    let X=$X+1
done
echo "Total number of files = ${FILES_COUNT}"
echo -e "Number of:\nConfiguration files (with the .conf extension) = ${CONF_COUNT}"
echo "Text files = ${TXT_COUNT}"
echo "Executable files = ${EXE_COUNT}"
echo "Log files (with the extension .log) = ${LOG_COUNT}"
echo "Symbolic links = ${SYMB_COUNT}"
echo "TOP 10 files of maximum size arranged in descending order (path, size and type):"
ls -lshRa | sort -hr | grep "\-rw" | head -10 |
while read a; do
    NAME=`echo ${a} | awk '{print $10}'`
    SIZE=`echo ${a} | awk '{print $1}'`
    EXT=${NAME##*/}
    if [[ $EXT = ${EXT##*.} ]]; then
        EXT="no ext"
    fi
    echo "${Y} - ${NAME} ${SIZE}B, ${EXT##*.}"
    let Y=${Y}+1
done
echo "TOP 10 executable files of the maximum size arranged in descending order (path, size and MD5 hash of file)"
find -type f -perm /a=x -exec du -h {} + | sort -rh | head -10 |
while read a; do
    NAME=`echo ${a} | awk '{print $2}'`
    SIZE=`echo ${a} | awk '{print $1}'`
    MD5=`md5sum $NAME | awk '{print $1}'`
    echo "${Z} - ${NAME:1} ${SIZE}B, ${MD5}"
    let Z=${Z}+1
done
}