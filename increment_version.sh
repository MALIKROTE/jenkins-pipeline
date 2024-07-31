#!/bin/bash

# File where the current version is stored
VERSION_FILE="version.txt"

# Get the current version from the file
current_version=$(cat $VERSION_FILE)
echo "Current version: $current_version"

# Split the version into major, minor, patch, pre, prod, test, dev
IFS='.' read -r major minor patch pre prod test dev <<< "$current_version"

# Increment the version (example: increment dev)
dev=$((dev + 1))

# New version
new_version="$major.$minor.$patch.$pre.$prod.$test.$dev"
echo "New version: $new_version"

# Update the version file with the new version
echo $new_version > $VERSION_FILE

# Print the new version for use in the pipeline
echo $new_version
