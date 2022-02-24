%title: Machine de centralisation
%author: xavki




-> Machine : centralisation <-
=========


*Objectif du jour : mise en place du service systemD*




<br>
-> Base de données <-



en root:

```
apt-get install mariadb-server

mysql

CREATE DATABASE collect;

GRANT ALL PRIVILEGES ON *.* TO 'xavki'@'%' IDENTIFIED BY 'xavki';
```

---------------------------------------------------------------------------


-> Script de récupération des datas <-


* récupération des curls


<br>

* script python de récupération des datas

```
#script
mkdir /opt/central
cp central.py

# datas
mkdir /var/central/
```

script :

```
#!/usr/bin/python
# coding:utf-8

from flask import Flask
from flask import request

app = Flask(__name__)

@app.route('/datas', methods=['PUT'])
def upload():
    machine = request.args['machine']
    type = request.args['type']
    with open('/var/central/'+machine+'_'+type+'_file.csv', 'wb') as f:
        f.write(request.data)
    return machine

if __name__ == '__main__':
  app.run(host='0.0.0.0', port=5000)
```

------------------------------------------------------------------------


-> Le service <-


* permettre de tourner en background

* permettre : start/stop/status

* Code minimum /etc/systemd/system/central.service

```
[Unit]
Description= Flask centralisation des datas
After=network.target

[Service]
User=root
ExecStart=/opt/central/central.py

[Install]
WantedBy=multi-user.target
```

* démarrage :

```
service central start
```
