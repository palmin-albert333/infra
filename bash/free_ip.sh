#!/bin/bash

for (( i = 1; i < 255; i++ )); do
if ping -c 1 192.168.38.$i; then
echo "192.168.38.$i" >> ip.txt
fi
done
cat ip.txt
