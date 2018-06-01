#!/bin/bash

#script to initialize and start Postgres

#printf "Initializing DB"
#postgresql-setup --initdb 
#sleep 10
#printf "db initialized, now starting the db server"

if [[ $1 == 'restart' ]]
then
    /opt/rh/rh-postgresql96/root/usr/bin/pg_ctl -D /var/opt/rh/rh-postgresql96/lib/pgsql/data -l logfile restart &
    exit 0
elif [[ $1 == 'start' ]]
then
   /opt/rh/rh-postgresql96/root/usr/bin/pg_ctl -D /var/opt/rh/rh-postgresql96/lib/pgsql/data -l logfile start &
   exit 0
else
  echo "Usage: ./start_db.sh start | restart"
fi

