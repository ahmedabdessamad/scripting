#!/bin/bash

hosts=`cat ../0-prepa-infra/ansible/hosts.yml | perl -nle 'm{.*(172.*):} and print $1'`

echo ""

for host in $hosts;do
	echo ""
	echo "Sur ${host} "
	MYSQL_PWD=xavki mysql -h ${host} -u xavki -e "SELECT table_schema 'Data Base Name', sum( data_length + index_length) / 1024 / 1024 'Data Base Size in MB' FROM information_schema.TABLES GROUP BY table_schema ;"
done

echo ""
