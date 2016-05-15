#!/bin/sh
echo "this postgres password: 0"
docker-compose run db psql -h db -U postgres