%title: Scripting - Projet
%author: xavki




-> Scripting : projet <-
=========



<br>
* apprendre à utiliser et scripter par la pratique et pas à pas

<br>
* projet : mise en place d'une infra mysql & script de collecte/centralisation de datas (cmdb like)

<br>
* Sommaire :
	
		* infrastructure mysql

		* injection de datas (aléatoire)

		* collecte local

		* serveur central : préparation (apache, php, postgres)

		* serveur central : reception

		* premiers push

		* chargement en bdd

		* exploitation : datatables

		* exploitation : metabase


------------------------------------------------------------------------------------------

-> Infrastructure <-


* utilisation du script deploy pour disposer d'une série de serveurs

<br>
* utilisation de ansible pour installer du mysql

```
pip install ansible

sudo apt-get install ansible
```

* ansible en mode simplifié (cf playlist ansible) :
		* hosts.yml
		* playbook.yml

