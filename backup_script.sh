#!/bin/bash
echo "-----------------------------------------------------------------------"
echo " "
# Define the backup directory
echo "Directory to save backups"
echo " "

echo "Example: /path/to/dir"
echo " "
read backup_dir
echo " "

echo "Directory to backup!"
read work_dir
# Create the backup directory if it doesn't exist
mkdir -p $backup_dir

# Archive the work directory and compress it
timestamp=$(date +'%Y%m%d_%H%M%S')
backup_filename="backup_${timestamp}.tar.gz"

tar czf "${backup_dir}/${backup_filename}" $work_dir

echo "Backup created: ${backup_dir}/${backup_filename}"
