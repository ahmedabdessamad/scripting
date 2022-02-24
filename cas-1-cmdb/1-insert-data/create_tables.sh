#!/bin/bash

# création tables

hosts=`cat ../0-prepa-infra/ansible/hosts.yml | perl -nle 'm{.*(172.*):} and print $1'`
databases="xavki1 xavki2 xavki3"

echo ""
echo "Début de création de la structure..."
echo ""

for host in $hosts;do
	for database in $databases; do
  	for j in $(seq 1 10);do
			MYSQL_PWD=xavki mysql -h ${host} -u xavki -e "create table table${j} (champs1 int, champs2 varchar(255), champs3 varchar(255), champs4 varchar(255),champs5 varchar(255),champs6 varchar(255),champs7 varchar(255),champs8 varchar(255),champs9 varchar(255),champs10 varchar(255),champs11 varchar(255),champs12 varchar(255),champs13 varchar(255),champs14 varchar(255));" ${database}
		done
		echo "  $database"
	done
	echo "Sur $host => OK"
done
echo ""
