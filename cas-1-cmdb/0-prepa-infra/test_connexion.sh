#!/bin/bash

hosts=`cat ansible/hosts.yml | perl -nle 'm{.*(172.*):} and print $1'`
echo ""
for host in $hosts;do
echo "Pour ${host}"
MYSQL_PWD=xavki mysql -h $host -u xavki -e "show databases;" 
echo ""
done
