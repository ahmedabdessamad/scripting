%title: Machine de centralisation
%author: xavki




-> Machine : Valorisation de la base centralisée <-
=========

-> *Installation de metabase * <-


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


-> Metabase : c'est quoi ?<-




<br>
* outil graphique de dashboard et requeting de bases de données

* bases : postgres, mysql, mariadb...

* plus loin : notifications, intégration, gestion ACL...

<br>
* installation : docker, heroku, classique (jar)

* docker : https://www.metabase.com/start/docker.html

```
docker run -d -p 3000:3000 -v /srv/data/metabase:/metabase-data -e "MB_DB_FILE=/metabase-data/metabase.db" --name metabase metabase/metabase
```


