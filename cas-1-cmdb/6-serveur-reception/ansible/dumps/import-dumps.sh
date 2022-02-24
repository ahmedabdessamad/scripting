#!/bin/bash

MYSQL_PWD=xavki mysql -h 172.17.0.3 -u xavki <dump_xavki_host1.sql
MYSQL_PWD=xavki mysql -h 172.17.0.4 -u xavki <dump_xavki_host2.sql
MYSQL_PWD=xavki mysql -h 172.17.0.5 -u xavki <dump_xavki_host3.sql
