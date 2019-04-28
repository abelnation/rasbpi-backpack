#!/usr/bin/env bash

SCRIPT_DIR=$(dirname "$0")

sudo cp ${SCRIPT_DIR}/echoserver.service /etc/systemd/system/
