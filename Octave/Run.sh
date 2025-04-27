#!/bin/bash

for file in *.m; do
    if [ -f "$file" ]; then
        echo "Running $file"
        octave "$file"
        sleep 0.5
    fi
done
