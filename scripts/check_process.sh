#!/bin/bash

# Capture the first command-line argument as the process name
# Example usage: ./check_process.sh bash
PROCESS_NAME=$1

# Check if the user provided a process name
# -z checks if the variable is empty
if [ -z "$PROCESS_NAME" ]; then
  echo "Usage: ./scripts/check_process.sh <process-name>"
  exit 1
fi

# pgrep searches for running processes by name
# -x ensures an exact match
# Output is redirected to /dev/null because we only care about success or failure
if pgrep -x "$PROCESS_NAME" > /dev/null; then
  echo "$PROCESS_NAME is running ✔"
else
  echo "$PROCESS_NAME is NOT running ⨉"
fi
