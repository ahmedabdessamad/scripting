#!/bin/bash

echo ""
echo ""

# contenu du fichier
echo "+ contenu du fichier texte"
cat myfile.txt
echo ""
echo ""

# if condition simple
echo "+ If simple"
cat myfile.txt | awk '{if(NR==1) print $1 ;else if ($2=="xavier") print $0;}'
echo ""
echo ""


# if en ternaire
echo "+ If ternaire"
cat myfile.txt | awk '{print NR==2? $2:""}'
echo ""

