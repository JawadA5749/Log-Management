# Log Management Script

This Bash script automates the process of archiving and clearing system log files.

## Features
- Creates a directory structure for logs based on the current year and month.
- Archives key log files (`auth.log`, `syslog`, `dmesg`) with a timestamp.
- Clears the original log files to conserve disk space.

## How It Works
1. Checks if the target directory for logs exists; if not, it creates it.
2. Copies the current log files to the target directory.
3. Renames the log files with the current date (e.g., `auth_YYYY-MM-DD.log`).
4. Clears the original log files by redirecting `/dev/null` to them.

## Usage
1. Save the script as `logProject.sh`.
2. Make the script executable:
   ```bash
   chmod +x logProject.sh
3. Run the script with:
   ```bash
   sudo ./logProject.sh
