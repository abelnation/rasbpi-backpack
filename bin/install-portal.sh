#!/usr/bin/env bash

SCRIPT_DIR=$(dirname "$0")

sudo rsync -azv --delete --dry-run \
    ${SCRIPT_DIR}/../portal/ \
    /var/www/html/portal/
