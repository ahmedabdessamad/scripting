%title: SHELL - CRONS
%author: xavki




-> SHELL : les crons <-
=========


*Objectif du jour : Programmer le lancement du script de collecte*

<br>
Deux manières :

* commande crontab

* édition de /etc/cron.d/

<br>
* crontab :
	- crontab -l : lister les tâches
	- crontab -e : éditer les actions
	- crontab -r : pour TOUTES les supprimer


Doc : https://doc.ubuntu-fr.org/cron

<br>
* la trame d'une ligne de cron (/etc/cron.d) :
min heure jourmois mois joursemaine user commande


    1-5 : les unités de temps de 1 à 5.
    */6 : toutes les 6 unités de temps (toutes les 6 heures par exemple).
    2,7 : les unités de temps 2 et 7.


attention : utiliser les bons users


---------------------------------------------------------------------------------




-> Mise à jour <-






* ajout de la minute plutôt que la date (pour l'exemple)

* ajout du curl en fin de script

* créer un répertoire  /opt/collect pour le script collect.sh

* créer un cron

*  ANSIBLE dans le dépôt





