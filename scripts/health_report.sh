#!/bin/bash

# Use the Bash shell to execute this script

# Define the directory where health reports will be stored
# $(pwd) ensures the path is absolute (current working directory)
REPORT_DIR="$(pwd)/reports"

# Generate a timestamp to make each report filename unique
# Format: YYYY-MM-DD_HH-MM-SS
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")

# Construct the full report filename using the timestamp
REPORT_FILE="$REPORT_DIR/health_$TIMESTAMP.txt"

# Create the reports directory if it does not already exist
# -p prevents errors if the directory already exists
mkdir -p "$REPORT_DIR"

# The curly braces group multiple commands together
# All output inside this block is redirected into the report file
{
  # Report Header
  echo "===== LINUX SERVER HEALTH REPORT ====="

  # Capture the current date and time
  echo "Timestamp: $(date)"

  # Show which user generated the report
  echo "User: $(whoami)"

  # Display the server hostname
  echo "Hostname: $(hostname)"
  echo ""

  # Show system uptime and load averages
  echo "Uptime:"
  uptime
  echo ""

  # Display disk usage in human-readable format
  echo "Disk usage:"
  df -h
  echo ""

  # Display memory usage in human-readable format
  echo "Memory usage:"
  free -h
  echo ""

  # Show the top 5 processes consuming the most memory
  # ps aux lists processes
  # --sort=-%mem sorts by memory usage (descending)
  # head -n 6 includes the header + top 5 processes
  echo "Top 5 processes by memory:"
  ps aux --sort=-%mem | head -n 6

# Redirect all output from this block into the report file
} > "$REPORT_FILE"

# Confirms report creation and display the file path
echo "Report created: $REPORT_FILE"
