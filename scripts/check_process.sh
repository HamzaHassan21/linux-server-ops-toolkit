#!/bin/bash

PROCESS_NAME=$1

if [ -z "$PROCESS_NAME" ]; then
  echo "Usage: ./scripts/check_process.sh <process-name>"
  exit 1
fi

if pgrep -x "$PROCESS_NAME" > /dev/null; then
  echo "$PROCESS_NAME is running ✅"
else
  echo "$PROCESS_NAME is NOT running ❌"
fi
