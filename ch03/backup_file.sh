#!/bin/bash

function backup_file() {
    if [ -f "$1" ]
    then
        local BACKUP_FILE
        BACKUP_FILE="/tmp/$(basename "$1").$(date +%F).$$"

        echo "Backing up $1 to ${BACKUP_FILE}"
        cp "$1" "$BACKUP_FILE"
    else
        return 1
    fi
}

if backup_file /etc/hosts
then
    echo "Backup succeeded!"
else
    echo "Backup failed!"
    exit1
fi
