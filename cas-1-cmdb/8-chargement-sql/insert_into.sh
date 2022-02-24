
## Traitement des lignes des tailles des bases de données :

cat /var/central/*.csv | awk -F ";" ' /db_taille/ {print "INSERT INTO central_db_taille VALUES ('\''"$1"'\'', '\''"$2"'\'', '\''"$4"'\'', '\''"$5"'\'');"}' >/var/central/insertion.sql

## Traitement des nombres de lignes par table :

cat /var/central/*.csv | awk -F ";" ' /db_lines/ {print "INSERT INTO central_db_lines VALUES ('\''"$1"'\'', '\''"$2"'\'', '\''"$4"'\'', '\''"$5"'\'', '\''"$6"'\'');"}' >> /var/central/insertion.sql

## Traitement des volumes physiques :

cat /var/central/*.csv | awk -F ";" ' /db_vol_physique/ {print "INSERT INTO central_db_volumesphy VALUES ('\''"$1"'\'', '\''"$2"'\'', '\''"$4"'\'', '\''"$5"'\'', '\''"$6"'\'');"}' >> /var/central/insertion.sql

## Traitement des données système:

cat /var/central/*.csv | awk -F ";" ' /system/ {print "INSERT INTO central_system VALUES ('\''"$1"'\'', '\''"$2"'\'', '\''"$4"'\'', '\''"$5"'\'', '\''"$6"'\'');"}' >> /var/central/insertion.sql

#insertion en base
MYSQL_PWD=xavki mysql -h 172.17.0.2 -u xavki collect< /var/central/insertion.sql
