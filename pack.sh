#!/bin/bash

source "$(dirname $0)/macros.sh"

[[ $# -ne 1 ]] && echo "Usage: $0 <appid>" && exit 65

tar cvf "$1/$tar" -C "$1" --no-recursion -T "$1/$files"
