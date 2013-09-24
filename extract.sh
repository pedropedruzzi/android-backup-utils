#!/bin/bash

[[ $# -ne 1 ]] && echo "Usage: $0 <appid>" && exit 65

# TODO: handle errors
unpack.sh "$1"

pack.sh "$1"

wrap.sh "$1"

cp -i "$1/backup.ab" "$1.ab"

#rm -rf "$1"

echo "Done. To restore this app use: adb restore $1.ab"
