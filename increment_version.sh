#!/bin/bash

# Extract the current version from a file or environment variable
current_version=$(cat version.txt)

# Split the version into its components
IFS='.' read -r part1 part2 part3 part4 part5 part6 <<< "$current_version"

# Increment the last part
part6=$((part6 + 1))

# Create the new version
new_version="$part1.$part2.$part3.$part4.$part5.$part6"

# Save the new version to a file or environment variable
echo "$new_version" > version.txt

# Output the new version
echo "$new_version"
