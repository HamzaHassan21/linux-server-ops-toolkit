#!/bin/bash

LOG_DIR="$(pwd)/logs"
DAYS_TO_KEEP=${1:-7}

mkdir -p "$LOG_DIR"

echo "Cleaning logs older than $DAYS_TO_KEEP days in $LOG_DIR..."
find "$LOG_DIR" -type f -mtime +$DAYS_TO_KEEP -print -delete
echo "Cleanup complete."
