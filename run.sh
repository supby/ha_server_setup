#!/bin/bash

# Creating necessary directories
mkdir -p ./ha_server_data/mosquitto/{config,data,log}
mkdir -p ./ha_server_data/zigbee2mqtt_data
mkdir -p ./ha_server_data/zigbee2mqtt_2_data
mkdir -p ./ha_server_data/webthings
mkdir -p ./ha_server_data/nodered_data
mkdir -p ./ha_server_data/grafana/{config,data}
mkdir -p ./ha_server_data/grafana/{config,data}

# run docker-compose
sudo docker-compose up -d