%title: Scripting - Projet
%author: xavki




-> Scripting : envoi/réception <-
=========

* 1 serveur de réception / 3 serveurs envoi

<br>
* réception : python flask

* organiser la réception des fichiers (par machine/type)

<br>
* envoi : curl

commande:

```
curl -i -X PUT 127.0.0.1:9999/datas?machine=$(hostname)\&type=mysql --upload-file datas.csv
```

