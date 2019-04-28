#!/usr/bin/env bash

SCRIPT_DIR=$(dirname "$0")
echo $SCRIPT_DIR

rsync -azPv --dry-run --delete ${SCRIPT_DIR}/.. pi:~/backpack
