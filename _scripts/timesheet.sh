#!/bin/bash
# timesheet.sh - Collects user work log input and appends to timesheet.log

LOG_DIR="$(dirname "$0")/../logs"
DATA_DIR="$(dirname "$0")/../data"
LOG_FILE="$LOG_DIR/timesheet.log"

# Ensure log and data directories exist
mkdir -p "$LOG_DIR" "$DATA_DIR"

# Prompt user for details
read -p "First Name: " fname
read -p "Last Name: " lname
read -p "Number of Hours Worked: " hours
read -p "Description of Work: " description

# Append to log file
{
    echo "==============================="
    echo "Date: $(date)"
    echo "Name: $fname $lname"
    echo "Hours Worked: $hours"
    echo "Description: $description"
    echo "==============================="
    echo ""
} >> "$LOG_FILE"

# Copy log to data directory
cp "$LOG_FILE" "$DATA_DIR/"

