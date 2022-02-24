#!/bin/bash

hosts=`cat ../0-prepa-infra/ansible/hosts.yml | perl -nle 'm{.*(172.*):} and print $1'`
databases="xavki1 xavki2 xavki3"

for host in $hosts;do
	echo ""
	echo "Drop sur ${host}..."
	for database in ${databases};do
  	for j in $(seq 1 10);do
			MYSQL_PWD=xavki mysql -h ${host} -u xavki -e "TRUNCATE table${j};" ${database}
		done
	done
done
