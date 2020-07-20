#!/bin/sh



while IFS= read -r line; do
    echo "$line" | sed 's/,.*//' pins.txt


done <pins.txt
