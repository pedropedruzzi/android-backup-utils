#!/bin/bash

source "$(dirname $0)/macros.sh"

[[ $# -ne 1 ]] && echo "Usage: $0 <appid>" && exit 65

(echo -ne 'ANDROID BACKUP\n1\n1\nnone\n' && openssl zlib -e <"$1/$tar") >"$1/$ab"
