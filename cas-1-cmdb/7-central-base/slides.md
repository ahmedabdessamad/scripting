%title: Machine de centralisation
%author: xavki




-> Machine : Gestion/insertion en bdd <-
=========

-> *Objectif du jour : préparer un script sql * <-

<br>
```


                         +---------------+
                    +----+               |
                    |    |   Maria 1     |
  +------------+    |    |               |
  |            |    |    +---------------+
  |  Central   <----+    +---------------+
  |            |    |    |               |
  +------------+    +----+   Maria 2     |
                    |    |               |
                    |    +---------------+
                    |    +---------------+
                    |    |               |
                    +----+   Maria 3     |
                         |               |
                         +---------------+

```

------------------------------------------------------------------------------------------


-> Mariadb : création des tables <-




1- table des tailles de base

Source: 

```
2019-01-31-18-14;oki-deb-vmparc2;db_taille;xavki1;12.05
```

SQL :

```
CREATE TABLE central_db_taille (
taille_date varchar(50),
taille_machine varchar(50),
taille_base varchar(50),
taille_volume_mb float(10)
);
```

-------------------------------------------------------------------------------------------

-> Suite SQL <-




2- Nombre de lignes par table

Source :

```
2019-01-31-18-14;oki-deb-vmparc2;db_lines;xavki3;table9;185
```

SQL :
```
CREATE TABLE central_db_lines(
lines_date varchar(50),
lines_machine varchar(50),
lines_base varchar(50),
lines_table varchar(50),
lines_nb_lines int(10)
);
```

-------------------------------------------------------------------------------------------------


-> Suite SQL <-


3- Nombre de lignes par table

Source :

```
2019-01-31-18-14;oki-deb-vmparc2;db_vol_physique;xavki3;58M;/var/lib/mysql/xavki3
```

SQL:

```
CREATE TABLE central_db_volumesphy(
volumesphy_date varchar(50),
volumephy_machine varchar(50),
volumephy_base varchar(50),
volumephy_taille float(10),
volumephy_nb_lines varchar(50);
```

-------------------------------------------------------------------------------------

-> suite et fin <-


4- Système

Source :

```
2019-01-31-18-14;oki-deb-vmparc2;system;514.368;Debian GNU/Linux 9.5 (stretch);15.2
```

SQL :

```
CREATE TABLE central_system(
system_date varchar(50),
system_machine varchar(50),
system_volume float(10),
system_os varchar(50),
system_memory_mb float(10);
```

-----------------------------------------------------------------------------------------

-> Préparation de l'insert en base <-

<br>
* cf playlist awk

```
cat datas.csv | awk -F ";" ' /db_taille/ {print "INSERT INTO central_db_taille VALUES ('\''"$1"'\'', '\''"$2"'\'', '\''"$4"'\'', '\''"$5"'\'');"}'
```

<br>
* idem lignes par table :

```
cat datas.csv | awk -F ";" ' /db_lines/ {print "INSERT INTO central_db_lines VALUES ('\''"$1"'\'', '\''"$2"'\'', '\''"$4"'\'', '\''"$5"'\'', '\''"$6"'\'');"}'
```

* idem volumes physiques :

```
cat datas.csv | awk -F ";" ' /db_volumesphy/ {print "INSERT INTO central_db_volumesphy VALUES ('\''"$1"'\'', '\''"$2"'\'', '\''"$4"'\'', '\''"$5"'\'', '\''"$6"'\'');"}'
```

* idem pour les données système :

```
cat datas.csv | awk -F ";" ' /system/ {print "INSERT INTO central_system VALUES ('\''"$1"'\'', '\''"$2"'\'', '\''"$4"'\'', '\''"$5"'\'', '\''"$6"'\'');"}'
```
