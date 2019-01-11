![SuperGreenLab](assets/sgl.png?raw=true "SuperGreenLab")

# SuperGreenCloud

Collection of pre-configured softwares to run the [SuperGreenOS's](https://github.com/supergreenlab/SuperGreenOS) cloud.

## Features

- Everything in a `docker-compose.yml` for easy deployement
- [MQTT](https://mosquitto.org/) sink port to receive all logs from the driver
- Minimal log [post-processor](https://github.com/supergreenlab/SuperGreenLog) to redirect to:
  - [Redis](https://redis.io/): stores all last values of each keys sent through the logs
  - [Promethes](https://prometheus.io/): stores all numeric values as timeseries for monitoring and alerts
  - [Elasticsearch](https://www.elastic.co/): indexation and data analysis engine, indexes all logs for further analysis, haven't used it yet.
- [Prometheus' alertManager](): Allows to describe alert conditions from prometheus timeseries. Then produces alerts on various bias, slack, sms, pigeon, whatnot..
- cAdvisor/node-exporter: The server running the cloud's own monitoring.
- [Grafana](): Produce nice graphs and dashboard from Prometheus timeseries.
- [Kibana](): Produce nice graphs and dashboard from Elasticsearch timeseries.
- Update http server for Over-The-Air (OTA) updates for the SuperGreenOS.

## TODO

- Better way to upload the new builds' firmware update files

# Quickstart

Only requirement in a working docker installation:

- [Docker for linux](https://docs.docker.com/install/)
- [Docker for mac](https://docs.docker.com/docker-for-mac/)
- [Docker for windows](https://docs.docker.com/docker-for-windows/)

## Configuration

There's not much to configure:

- mqtt login/pass: search for `mqtt_username` and `mqtt_password` in docker-compose.
- domain names used: search for `VIRTUAL_HOST` in docker-compose

## Local install

Now that docker is installed and running, clone this repo, and from the repo's directory run the command `docker-compose up`

```js

git clone git@github.com:supergreenlab/SuperGreenCloud.git
cd SuperGreenCloud
docker-compose up

```

## Cloud install

