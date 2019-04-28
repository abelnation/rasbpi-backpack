#!/usr/bin/env bash

sudo rsync -azv --delete --dry-run \
    ${SCRIPT_DIR}/../portal/ \
    /var/www/html/portal/
