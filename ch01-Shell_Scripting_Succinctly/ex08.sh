#!/bin/bash

set -e

FILES=( "$@" )

for FILE in "${FILES[@]}"
do
    if [ -f "${FILE}" ]
    then
        echo "${FILE}: regular file"
    elif [ -d "${FILE}" ]
    then
        echo "${FILE}: directory"
    else
        echo "${FILE}: another type"
    fi
    ls "${FILE}"
done
