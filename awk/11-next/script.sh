#!/bin/bash
cat myfile.txt | awk '$2 ~ /xavier/ {next} {print $0}'
