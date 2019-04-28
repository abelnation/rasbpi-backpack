#!/usr/bin/env bash

SCRIPT_DIR=$(dirname "$0")

sudo cp ${SCRIPT_DIR}/../nginx/nginx.conf /etc/nginx/
sudo rsync -azv --delete \
    ${SCRIPT_DIR}/../nginx/sites-available \
    /etc/nginx/

sudo systemctl restart nginx
