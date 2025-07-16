#!/bin/bash

# Simple backup script with improvements

echo "Starting backup..."

SOURCE_DIR=${1:-"$HOME/Documents"}
BACKUP_DIR=${2:-"$HOME/Backups"}
DATE=$(date +%Y-%m-%d)
LOG_FILE="$BACKUP_DIR/backup.log"

if [ ! -d "$SOURCE_DIR" ]; then
    echo "Source directory does not exist: $SOURCE_DIR"
    exit 1
fi

if mkdir -p "$BACKUP_DIR"; then
    echo "Backup directory created: $BACKUP_DIR"
else
    echo "Failed to create backup directory: $BACKUP_DIR"
    exit 1
fi

if tar -czf "$BACKUP_DIR/backup-$DATE.tar.gz" -C "$SOURCE_DIR" .; then
    echo "Backup completed successfully at $BACKUP_DIR/backup-$DATE.tar.gz"
    echo "$(date): Backup completed at $BACKUP_DIR/backup-$DATE.tar.gz" >> "$LOG_FILE"
else
    echo "Backup failed"
    exit 1
fi
