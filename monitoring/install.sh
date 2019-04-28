#!/usr/bin/env bash

SCRIPT_DIR=$(dirname "$0")

sudo cp ${SCRIPT_DIR}/grafana.ini /etc/grafana/grafana.ini
sudo cp ${SCRIPT_DIR}/telegraf.ini /etc/telegraf/telegraf.conf
