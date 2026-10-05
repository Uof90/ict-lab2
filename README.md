ICT6001 Lab 2
Scripts for working with files and the command line.
Scripts
scripts/backup.sh creates a timestamped .tar.gz archive of docs/ in backup/, writes a line to logs/backup.log and deletes archives older than 7 days. It stops with an error if docs/ does not exist.
scripts/backup.ps1 does the same in PowerShell (creates a .zip with Compress-Archive).
How to run

Shell
chmod +x scripts/backup.sh
./scripts/backup.sh
PowerShell:

PowerShell
pwsh ./scripts/backup.ps1
