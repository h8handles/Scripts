#!/bin/sh

#quick dirty way to remove the characters on the most common pin list in the SecList 
#removes characters after the ":" must change to a .txt file!

while IFS= read -r line; do
    echo "$line" | sed 's/,.*//' filename #change this!!!!


done <pins.txt
