#!/bin/bash

# Simple backup script

echo "Starting backup..."

SOURCE_DIR="$HOME/Documents"
BACKUP_DIR="$HOME/Backups"
DATE=$(date +%Y-%m-%d)

mkdir -p "$BACKUP_DIR"
cp -r "$SOURCE_DIR" "$BACKUP_DIR/backup-$DATE"

echo "Backup completed at $BACKUP_DIR/backup-$DATE"
