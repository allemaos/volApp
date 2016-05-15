#!/bin/sh

docker stop volapp_cli_db_1
docker rm -f volapp_cli_db_1
docker run -d --name volapp_cli_db_1 -p 5432:5432 --volumes-from volapp_db_1 postgres:9.4.7

#docker exec -it volapp_cli_db_1 /bin/sh
docker exec -it volapp_cli_db_1 psql -U postgres 

#docker-compose run cli_db psql -h db -U postgres