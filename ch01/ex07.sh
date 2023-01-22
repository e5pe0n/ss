#!/bin/bash

set -e

FILE="$1"

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

