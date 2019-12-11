#!/usr/bin/env bash

set -e

required_dirs=("./var/lib/mysql")
for ((i = 0; i < ${#required_dirs[@]}; i++)); do
    mkdir -p "${required_dirs[$i]}"
done