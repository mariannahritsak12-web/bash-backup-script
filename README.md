# bash-backup-script

This tool parses system logs to generate a comprehensive audit of user activity. It tracks which users are active on specific machines within a defined time window and calculates the total duration of completed sessions.

## Core functionality
Chronological audit of machine logins & session durations.

## Key enhancements
Audit logic - tracks historical state to show everyone who accessed the system
Duration tracking - implemented to report total active time per user
Error handling - uses try-except blocks and collections defualtDict module to handle dirty data
Formatted output - generated a structured .txt report 

## Usage
python3 script.py
Input: events.csv | Output: user_access_report.txt

## Background
This project originated as final assignments in the Google IT Automation professional certificates on Coursera
  Note: this version have been significantly refactored and optimized.
