#!/bin/bash

# Define the directory to back up
# If no argument is provided, default to the user's home directory
SOURCE_DIR=${1:-$HOME}

# Define where backups will be stored (relative to current directory)
BACKUP_DIR="$(pwd)/backups"

# Generate a timestamp so each backup has a unique name
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")

# Construct the full backup filename
BACKUP_FILE="$BACKUP_DIR/backup_$TIMESTAMP.tar.gz"

# Create the backup directory if it doesn't already exist
mkdir -p "$BACKUP_DIR"

# Create a compressed archive of the source directory
# -c = create archive
# -z = compress with gzip
# -f = specify output file
# Any errors are redirected to a log file for troubleshooting
tar -czf "$BACKUP_FILE" "$SOURCE_DIR" 2> "$(pwd)/logs/backup_errors.log"

# Confirm backup creation
echo "Backup created: $BACKUP_FILE"

# Display which directory was backed up
echo "Source backed up: $SOURCE_DIR"
