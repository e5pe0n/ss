#!/bin/bash

set -e

read -r -p "Enter a file: " FILE

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
