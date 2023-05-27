#!/bin/bash

# Prompt the user for pace minutes
read -p "Enter your pace (per mile) minutes: " minutes

# Prompt the user for pace seconds
read -p "Enter your pace (per mile) seconds: " seconds

echo "NOTE: Assuming pace was given in M:S/Mile"

# Convert minutes and seconds into total seconds
total_seconds=$((minutes * 60 + seconds))
formatted_seconds=$(printf "%.2f" "$total_seconds")

echo "Total seconds: $formatted_seconds"

# Convert seconds into mph
mph=$(echo "scale=2; 3600 / $formatted_seconds" | bc)
echo "Your pace is $mph miles per hour!"
