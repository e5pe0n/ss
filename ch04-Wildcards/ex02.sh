#!/bin/bash

DEFAULT_PREFIX=$(date +%F)
read -r -p "Please enter a file extension: " EXT
read -r -p "Please enter a file prefix (Press ENTER for $DEFAULT_PREFIX): " PREFIX

if [ -z "$PREFIX" ]
then
    PREFIX="$DEFAULT_PREFIX"
fi

for FILE in *."$EXT"
do
    echo "Renaming $FILE to ${PREFIX}-${FILE}."
    mv "$FILE" "${PREFIX}-${FILE}"
done
