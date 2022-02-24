#!/bin/bash

hosts="172.17.0.3 172.17.0.4 172.17.0.5"
for host in $hosts;do
MYSQL_PWD=xavki mysql -h ${host} -u xavki -sN -e "SELECT table_schema 'Data Base Name', round(sum( data_length + index_length) / 1024 / 1024, 2) 'Data Base Size in MB' FROM information_schema.TABLES where table_schema not in ('mysql', 'performance_schema', 'information_schema') GROUP BY table_schema ;"
done
