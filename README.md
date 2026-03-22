## Incremental Backup Utility

A robust bash utility that automates daily backups by identifying and archiving the files modified within the last 24 hours.

### Core functionality
Automated, timestamped archiving of modified system files.

### Key enhancements
**Input validation:** script validates directory paths and returns non-zero value exit codes on failure  
**Array processing:** leverages arrays for safe handling of filenames containing spaces and special characters

### Usage
'./backup.sh <target_directory> <destination_directory>'

### Background
This project originated as final assignment in the IBM Shell Scripting professional certificate on Coursera.
