#!/bin/bash

docker ps -a --format '{{ .Names}}' | awk -F "-" -v user="$USER" '$0 ~ user"-alpine" {print $3}' | sort -r |head -1
