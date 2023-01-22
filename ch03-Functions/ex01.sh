#!/bin/bash

file_count() {
    local NUM_FILES
    NUM_FILES=$(find . -type f | wc -l)
    echo "$NUM_FILES"
}

file_count
