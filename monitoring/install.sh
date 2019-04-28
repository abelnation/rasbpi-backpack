#!/usr/bin/env bash

SCRIPT_DIR=$(dirname "$0")

sudo cp ${SCRIPT_DIR}/grafana.ini /etc/grafana/grafana.ini
sudo cp ${SCRIPT_DIR}/telegraf.conf /etc/telegraf/telegraf.conf
sudo cp ${SCRIPT_DIR}/influxdb.conf /etc/influxdb/influxdb.conf
