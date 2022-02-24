#!/bin/bash

MYSQL_PWD=xavki mysql -h 172.17.0.2 -u xavki -e "CREATE TABLE central_db_taille (
taille_date varchar(20),
taille_machine varchar(20),
taille_base varchar(20),
taille_volume_mb float(10)
);
" collect

MYSQL_PWD=xavki mysql -h 172.17.0.2 -u xavki -e "CREATE TABLE central_db_lines(
lines_date varchar(20),
lines_machine varchar(20),
lines_base varchar(20),
lines_table varchar(20),
lines_nb_lines int(10)
);
" collect

MYSQL_PWD=xavki mysql -h 172.17.0.2 -u xavki -e "CREATE TABLE central_db_volumesphy(
volumesphy_date varchar(50),
volumephy_machine varchar(50),
volumephy_base varchar(50),
volumephy_taille float(10),
volumephy_nb_lines varchar(50)
);
" collect

MYSQL_PWD=xavki mysql -h 172.17.0.2 -u xavki -e "CREATE TABLE central_system(
system_date varchar(50),
system_machine varchar(50),
system_volume float(10),
system_os varchar(50),
system_memory_mb float(10)
);
" collect

