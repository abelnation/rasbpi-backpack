#!/usr/bin/env bash

SCRIPT_DIR=$(dirname "$0")

sudo rsync -azv --delete \
    ${SCRIPT_DIR}/../nginx/sites-available \
    /etc/nginx/
