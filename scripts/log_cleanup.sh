#!/bin/bash

# Define the directory where log files are stored
# $(pwd) ensures we use the absolute path of the current project
LOG_DIR="$(pwd)/logs"

# Define how many days of logs to keep
# If no argument is provided, default to 7 days
DAYS_TO_KEEP=${1:-7}

# Create the log directory if it does not exist
# This prevents errors when running the script for the first time
mkdir -p "$LOG_DIR"

# Inform the user what cleanup action is being performed
echo "Cleaning logs older than $DAYS_TO_KEEP days in $LOG_DIR..."

# Find all files in the log directory older than the specified number of days
# -type f ensures only files are targeted
# -mtime +N matches files modified more than N days ago
# -print shows which files are being removed
# -delete removes the matched files
find "$LOG_DIR" -type f -mtime +$DAYS_TO_KEEP -print -delete

# Confirm cleanup completion
echo "Cleanup complete."
