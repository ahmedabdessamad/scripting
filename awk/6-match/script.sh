#!/bin/bash

cat texte.txt | awk 'match($0,/192(.[0-9]+)+/){print substr($0, RSTART, RLENGTH)}'
