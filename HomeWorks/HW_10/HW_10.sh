#!/bin/bash

DIR="/opt/131224-wdm/dennis"

for i in {1..10}
do
    touch "$DIR/${i}_$(date +%d.%m.%y)"
done
