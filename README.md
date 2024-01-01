# Home Automation server setup

Example of `docker-compose` configuration to run home automation server based on:

- Two `zigbee2mqtt` services to support two independednt zigbee networks
- `mqtt` broker
- `influxdb` to store time series sensors data
- `nodered` to build automatizations
- `webthings` gateway to show and control current sensors state
- `ahavi-deamon` to reflect mDNS traffic from internal docker network to host network.

## Pre-requesties

- Create `.env` file based on `.env.example`
- Set mqtt username and password from `.env` in `zigbee2mqtt` configs:
  ```
  mqtt:
    ...
    user: my_user
    password: my_password
  ```

## Run

`sudo ./run.sh`