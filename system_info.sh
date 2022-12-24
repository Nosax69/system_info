#!/bin/bash

# Display the hostname
echo "Hostname: $(hostname)"

# Display the OS name and version
echo "Operating System: $(uname -s) $(uname -r)"

# Display the CPU model and number of cores
echo "CPU: $(lscpu | grep 'Model name:' | awk -F: '{print $2}') ($(lscpu | grep 'CPU(s):' | awk -F: '{print $2}') cores)"

# Display the total amount of memory and available memory
echo "Memory: $(free -h | grep 'Mem:' | awk '{print $2}') total, $(free -h | grep 'Mem:' | awk '{print $7}') available"

# Display the current date and time
echo "Date and Time: $(date)"
