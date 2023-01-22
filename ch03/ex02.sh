#!/bin/bash

file_count() {
    local DIR
    local NUM_FILES
    DIR=$1
    NUM_FILES=$(find "$DIR" -type f | wc -l)
    echo "${DIR}:"
    echo "$NUM_FILES"
}

file_count /etc
file_count /var
file_count /usr/bin
