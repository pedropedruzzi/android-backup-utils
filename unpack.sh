#!/bin/bash

source "$(dirname $0)/macros.sh"

[[ $# -ne 1 ]] && echo "Usage: $0 <appid>" && exit 65

mkdir "$1"

run_tar xv -C "$1" "apps/$1" | tee "$1/$files"
