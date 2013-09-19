#!/bin/bash

source "$(dirname $0)/macros.sh"

[[ $# -ne 0 ]] && echo "Usage: $0" && exit 65

run_tar t "apps/" | grep -o "^apps/[^/]*/" | uniq
