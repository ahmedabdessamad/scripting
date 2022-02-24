#!/bin/bash

cat myfile.txt | awk '{tab[$0]++}END{for (line in tab) print line}'
