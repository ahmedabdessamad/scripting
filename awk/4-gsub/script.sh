#!/bin/sh

cat myfile.txt | awk '{gsub("ier","ki",$2);print$2}'
