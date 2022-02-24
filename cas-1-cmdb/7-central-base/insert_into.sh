
## Traitement des lignes des tailles des bases de données :

cat *.csv | awk -F ";" ' /db_taille/ {print "INSERT INTO central_db_taille VALUES ('\''"$1"'\'', '\''"$2"'\'', '\''"$4"'\'', '\''"$5"'\'');"}' >insertion.sql

## Traitement des nombres de lignes par table :

cat *.csv | awk -F ";" ' /db_lines/ {print "INSERT INTO central_db_lines VALUES ('\''"$1"'\'', '\''"$2"'\'', '\''"$4"'\'', '\''"$5"'\'', '\''"$6"'\'');"}' >> insertion.sql

## Traitement des volumes physiques :

cat *.csv | awk -F ";" ' /db_vol_physique/ {print "INSERT INTO central_db_volumesphy VALUES ('\''"$1"'\'', '\''"$2"'\'', '\''"$4"'\'', '\''"$5"'\'', '\''"$6"'\'');"}' >> insertion.sql

## Traitement des données système:

cat *.csv | awk -F ";" ' /system/ {print "INSERT INTO central_system VALUES ('\''"$1"'\'', '\''"$2"'\'', '\''"$4"'\'', '\''"$5"'\'', '\''"$6"'\'');"}' >> insertion.sql


