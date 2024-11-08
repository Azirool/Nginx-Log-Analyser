#!/bin/bash

LOG_FILE='nginx-access.log'

echo "Top 5 most used Ip Address"
grep -o '[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}' $LOG_FILE | \
sort | \
uniq -c | \
sort -nr | \
head -5 | \
awk '{print $2 " - " $1 " requests"}'

echo "Top 5 most requested path"