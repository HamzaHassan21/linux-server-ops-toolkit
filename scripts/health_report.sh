#!/bin/bash

REPORT_DIR="$(pwd)/reports"
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
REPORT_FILE="$REPORT_DIR/health_$TIMESTAMP.txt"

mkdir -p "$REPORT_DIR"

{
  echo "===== LINUX SERVER HEALTH REPORT ====="
  echo "Timestamp: $(date)"
  echo "User: $(whoami)"
  echo "Hostname: $(hostname)"
  echo ""
  echo "Uptime:"
  uptime
  echo ""
  echo "Disk usage:"
  df -h
  echo ""
  echo "Memory usage:"
  free -h
  echo ""
  echo "Top 5 processes by memory:"
  ps aux --sort=-%mem | head -n 6
} > "$REPORT_FILE"

echo "Report created: $REPORT_FILE"
