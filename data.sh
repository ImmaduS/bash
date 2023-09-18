#!/bin/bash
# To gather evidence for data analysis .
# Scan viruses using the unix scanning tool clamscan and store it in a variable

viruses=$(clamscan -r /)

echo 1


evidence_rep="/consultant/project/$viruses"

echo 2
mkdir -p "$evidence_rep"

echo 3
# Copy logs in the file

cp /var/log/syslog "$evidence_rep/syslog.txt"

echo 4
# Copy system data for hosts in a file
cp /etc/hosts "$evidence_rep/hosts.tx"

echo 5
# Display message
echo "The data has been stored"

