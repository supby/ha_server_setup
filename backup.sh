#!/bin/bash

# run infuxdb backup
INFLUX_DIR="$(pwd)/backups-influx/backup_$(date '+%Y-%m-%d_%H-%M')"
influx backup $INFLUX_DIR -t ${INFLUX_ROOT_TOKEN}

BACKUP_DIR="$(pwd)/backups"

# make a local archive
tar -zcvf ${BACKUP_DIR}/iot-server-home.backup-$(date +%F).tar.gz $(pwd)/ha_server_data

# backup to gdrive
sleep 2
gdrive push -quiet -destination Backups/iot_server ${BACKUP_DIR}/*

# delete archives older than 3 days from disk
sleep 2
find ${BACKUP_DIR} -type f -name "*.tar.gz" -mtime +3 -exec rm {} \;

# clean influx
rm -rf $INFLUX_DIR