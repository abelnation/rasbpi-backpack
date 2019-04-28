#!/usr/bin/env bash

SCRIPT_DIR=$(dirname "$0")

sudo crontab < ${SCRIPT_DIR}/crontab
