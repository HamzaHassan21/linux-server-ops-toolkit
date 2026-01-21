#!/bin/bash

SOURCE_DIR=${1:-$HOME}
BACKUP_DIR="$(pwd)/backups"
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
BACKUP_FILE="$BACKUP_DIR/backup_$TIMESTAMP.tar.gz"

mkdir -p "$BACKUP_DIR"

tar -czf "$BACKUP_FILE" "$SOURCE_DIR" 2> "$(pwd)/logs/backup_errors.log"

echo "Backup created: $BACKUP_FILE"
echo "Source backed up: $SOURCE_DIR"
