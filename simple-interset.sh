#!/bin/bash

# Simple Interest Calculator

echo "--- Simple Interest Calculator ---"

# Read Principal
read -p "Enter the Principal amount: " principal

# Read Rate
read -p "Enter the Annual Interest Rate (in %): " rate

# Read Time
read -p "Enter the Time (in years): " time

# Calculate Simple Interest using 'bc' for decimal support
# Formula: (P * R * T) / 100
interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

# Calculate Total Amount
total=$(echo "scale=2; $principal + $interest" | bc)

echo "---------------------------------"
echo "Simple Interest: $interest"
echo "Total Amount: $total"
echo "---------------------------------"
