#!/bin/bash

for i in {1..10}; do
   date=$(date +"%T")
   processes=$(ps -e | wc -l)
   echo "$date $processes"
   sleep 5
done

cat /proc/cpuinfo > cpuinfo.txt

grep -E '^NAME=' /etc/os-release | cut -d= -f2 | tr -d '"' > osinfo.txt

for i in {50..100}; do
   touch "${i}.txt"
done
