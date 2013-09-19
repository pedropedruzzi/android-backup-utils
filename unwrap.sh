#!/bin/bash

source "$(dirname $0)/macros.sh"

[[ $# -ne 0 ]] && echo "Usage: $0" && exit 65

unwrap_ab "$ab" >"$tar"
