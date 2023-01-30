#!/bin/bash

# turn on bash's job control
set -m

# Start the primary process
docker-entrypoint.sh mysqld &

#Create user & table into Mysql
sleep 60
mysql -u root --password=PaSSw0rd</tmp/mysql.sql

# now we bring the primary process back into the foreground
fg %1