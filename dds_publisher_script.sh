#!/bin/bash
# DDS Publisher logic that simulates router data

# This example assumes OpenDDS is installed and configured
# Add logic to publish CPU and memory usage here
# Example metric publishing script

while true; do
    CPU_USAGE=$(grep 'cpu ' /proc/stat | awk '{usage=($2+$4)*100/($2+$4+$5)} END {print usage}')
    MEMORY_USAGE=$(free | grep Mem | awk '{print $3/$2 * 100.0}')

    # Publish these metrics via DDS (this would use OpenDDS APIs to publish)
    echo "Publishing CPU usage: $CPU_USAGE% and Memory usage: $MEMORY_USAGE% to DDS"

    sleep 5
done
