#!/bin/bash
# backup.sh
# Daily backup of Homebrew installed packages with date-based logs

BASE_DIR="$HOME/brew-backup-daily"
BREWFILES_DIR="$BASE_DIR/brewfiles"
LOGS_DIR="$BASE_DIR/logs"

mkdir -p "$BREWFILES_DIR"
mkdir -p "$LOGS_DIR"

# Create a dated file
DATE=$(date +%Y-%m-%d)
BUNDLE_FILE="$BREWFILES_DIR/Brewfile-$DATE"
LOG_FILE="$LOGS_DIR/backup-$DATE.log"

{
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] Starting Homebrew backup..."

    # Backup Homebrew installed packages
    if brew bundle dump --file="$BUNDLE_FILE" --force; then
        echo "✅ Backup successful: $BUNDLE_FILE"
    else
        echo "❌ Backup failed!"
    fi

    echo "--------------------------------------------"
} >> "$LOG_FILE" 2>&1

