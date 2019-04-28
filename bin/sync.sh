#!/usr/bin/env bash

SCRIPT_DIR=$(dirname "$0")

rsync -azPv --dry-run --delete ${SCRIPT_DIR}/.. pi:~/backpack
