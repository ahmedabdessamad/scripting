#!/bin/bash

# compter le nombre de mots
cat myfile.txt | awk '{print NF;total = total + NF;}END{print "Nb mots : " total}'

# compter nb caractère y compris blancs
cat myfile.txt | awk -F "" '{print NF;total = total + NF;}END{print "Nb mots : " total}'
