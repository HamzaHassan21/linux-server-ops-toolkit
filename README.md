# Linux Server Operations Toolkit (Bash)

A hands-on Linux project built on an AWS EC2 instance to demonstrate practical system administration and automation tasks commonly performed in Cloud and DevOps environments.

This project focuses on operating a Linux server using the command line and Bash scripting rather than GUI-based tools.

--- 

## Project Overview

The Linux Server Operations Toolkit automates routine server management tasks such as:
- Generating system health reports
- Creating compressed backups
- Cleaning up old log files
- Monitoring running processes

All scripts were written and executed directly on an AWS EC2 Linux instance using SSH.

---

## Features

- **System Health Report**
  - Captures uptime, disk usage, memory usage, and top memory-consuming processes
  - Outputs timestamped reports for easy tracking

- **Automated Backup Script**
  - Creates compressed (`.tar.gz`) backups of selected directories
  - Uses timestamps to avoid overwriting previous backups

- **Log Cleanup Automation**
  - Deletes log files older than a specified number of days
  - Helps prevent disk space issues on servers

- **Process Monitoring**
  - Checks whether a given process is running
  - Useful for basic service health verification

---
## Technologies Used

Linux (Amazon Linux)

Bash

AWS EC2

SSH

---

## 📂 Project Structure
linux-server-ops-toolkit/

├── scripts/


│ ├── health_report.sh


│ ├── backup_folder.sh


│ ├── log_cleanup.sh


│ └── check_process.sh


├── logs/


├── backups/


├── reports/


└── README.md

---
## What I Learned

Through this project, I gained hands-on experience with:

- Operating and managing a Linux server via SSH  
- Bash scripting for automation  
- File and directory management  
- Process monitoring and system inspection  
- Creating reliable backups and maintaining logs  
- Applying Linux fundamentals in a real cloud environment (AWS EC2)

This project helped reinforce core Linux concepts required for Cloud and DevOps roles.

---

## Cost Management Note

The AWS EC2 instance used for this project has been shut down after completion to avoid unnecessary costs.
All scripts, outputs, and documentation remain available in this repository for review.

---

## How to Run

```bash
chmod +x scripts/*.sh

./scripts/health_report.sh
./scripts/backup_folder.sh
./scripts/log_cleanup.sh 7
./scripts/check_process.sh bash
