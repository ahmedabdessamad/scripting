#!/bin/bash

top -n 1 |awk '(($10+0) > 2.0 && $1 !~/K/)'
