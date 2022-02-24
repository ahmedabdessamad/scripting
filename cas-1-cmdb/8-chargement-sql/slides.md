%title: Machine de centralisation
%author: xavki




-> Machine : Automatisation de l'insertion en BDD <-
=========

-> *Objectif du jour : cron du script shell pour sql * <-

* script création de la base

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


-> Ajout du cron <-



<br>
* ajout d'une ligne de chargement en BDD

<br>
* ajuster les chemins de notre script

<br>
* créer un cron (fichier)

```
* * * * * root /opt/central/insert_into.sh
```

<br>
* checker que ça marche

