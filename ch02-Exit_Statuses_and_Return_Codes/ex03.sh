#!/bin/bash

cat "/etc/shadow"
STATUS_CODE="$?"

if [ "${STATUS_CODE}" -eq "0" ]
then
    echo "Command succeeded"
    exit 0
else
    echo "Command failed"
    exit 1
fi
