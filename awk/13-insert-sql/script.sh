#!/bin/bash


ps aux | awk '!/\[/ {print "INSERT INTO process values ('\''"$1"'\'','\''"$2"'\'', '\''"$11"'\'');"}'
