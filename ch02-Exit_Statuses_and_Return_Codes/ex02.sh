#!/bin/bash

FILE="$1"

if [ -f "${FILE}" ]
then
    echo "${FILE} is a reguar file"
    exit 0
elif [ -d "${FILE}" ]
then
    echo "${FILE} is a directory"
    exit 1
else
    echo "${FILE} is another type"
    exit 2
fi
