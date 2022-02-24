#!/bin/sh

cat myfile.txt | awk 'BEGIN {print "\nListe des xavkistes :\n"}; /xav[ie]er/ {print $2"-> Ville : "$3" - Département: "$3" - long_prenom = "length($2)} END {print "\nLignes parcourues : "NR"\n"}'
