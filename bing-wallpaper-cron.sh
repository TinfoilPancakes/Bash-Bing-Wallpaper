#!/usr/bin/env bash

# Created by: Alejandro Figueroa (git-user: thejandroman)
# Modified by: Prateek R Patil
# Made modifications to be able to run via crontab on ubuntu.
# Pass user's home directory as first arg, path to save directory as second arg.

H_DIR=$1

PICTURE_DIR="$H_DIR/$2"

mkdir -p "$PICTURE_DIR"

urls=( $(curl -sL http://www.bing.com | \
    grep -Eo "url:'.*?'" | \
    sed -e "s/url:'\([^']*\)'.*/http:\/\/bing.com\1/" | \
    sed -e "s/\\\//g") )

for p in ${urls[@]}; do
    filename=$(echo $p|sed -e "s/.*\/\(.*\)/\1/")
    if [ ! -f "$PICTURE_DIR/$filename" ]; then
        echo "Downloading: $filename ..."
        curl -Lo "$PICTURE_DIR/$filename" $p
    else
        echo "Skipping: $filename ..."
    fi
done
