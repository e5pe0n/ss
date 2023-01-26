#!/bin/bash

shopt -s nullglob
for SRC_JPG in *.jpg
do
    mv "$SRC_JPG" "$(date +%F)"-"$SRC_JPG"
done
