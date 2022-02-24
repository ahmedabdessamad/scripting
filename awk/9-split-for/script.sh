#!/bin/bash

# split : imprime première colonne
cat myfile.txt | awk '{split($0,tab, " "); print tab[1]}'

# boucle for : caractère un à un
cat myfile.txt | awk '{split($0,tab, ""); for (i=1;i<=length($0);i++){print tab[i]}}'
