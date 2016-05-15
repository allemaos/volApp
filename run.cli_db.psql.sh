#!/bin/sh
echo "this postgres password: 0"
docker-compose run cli_db psql -h db -U postgres