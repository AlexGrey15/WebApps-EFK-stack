## Platform
* `Nginx` web-interface frontend
* `PHP >= 7.2` (served best with `FPM`)
* `MySQL` database backend
* `Redis` database backend
* `Fluentd` logging
* `Elasticsearch` logging
* `Kibana` logging

## MySQL & Redis. Database
Application uses MySQL and Redis as storage backends.
For the MySQL database, you need to create a user and a table. It's doing from script after start MySQL-service. Taken from [here](https://docs.docker.com/config/containers/multi-service_container/)

## PHP
Engine for my application

## EFK-stack
### Elasticsearch. Preparation before installation
The following requirements and recommendations apply when running Elasticsearch in Docker in production. Set vm.max_map_count to at least 262144
The vm.max_map_count kernel setting must be set to at least 262144 for production use.

```shell script
sysctl -w vm.max_map_count=262144

```
Taken from [here](https://www.elastic.co/guide/en/elasticsearch/reference/current/docker.html#docker-prod-prerequisites)

### EFK. Install
Install with docker-compose utility
Taken from [here](https://www.elastic.co/guide/en/elasticsearch/reference/current/docker.html#docker-compose-file)
