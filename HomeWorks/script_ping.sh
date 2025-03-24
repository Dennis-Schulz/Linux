#!/bin/bash

read -p "Enter the address to ping: " address

failures=0

while true; do
    ping_result=$(ping -c 1 "$address" 2>&1)

    if [[ $? -ne 0 ]]; then
        failures=$((failures + 1))
        echo "Ping failed. Number of consecutive errors: $failures"

        if [[ $failures -ge 3 ]]; then
            echo "The $address cannot be pinged. Interruption due to 3 consecutive errors."
            break
        fi
    else
        failures=0
        avg_ping=$(echo "$ping_result" | awk -F '/' '/rtt/ {print $5}')

        if (( $(echo "$avg_ping > 100" | bc -l) )); then
            echo "Response time to $address: $avg_ping ms. This exceeds 100 ms."
        else
            echo "Response time to $address: $avg_ping мс."
        fi
    fi

    sleep 1
done



















