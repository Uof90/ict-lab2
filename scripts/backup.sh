#!/usr/bin/env bash
set -e                                   # остановиться при ошибке

BASE="$HOME/ict_lab2"
SRC="$BASE/docs"
DEST="$BASE/backup"
LOG="$BASE/logs/backup.log"

# проверка исходного каталога
if [ ! -d "$SRC" ]; then
    echo "ERROR: source directory $SRC does not exist" >&2
    exit 1
fi

mkdir -p "$DEST"
STAMP=$(date +%Y%m%d_%H%M%S)
ARCHIVE="$DEST/docs_$STAMP.tar.gz"

if [ ! -d "$SRC" ]; then echo "ERROR: source directory $SRC does not exist" >&2 exit 1 fi

tar -czf "$ARCHIVE" -C "$BASE" docs                      # архив
echo "$(date '+%F %T') backup created: $ARCHIVE" >> "$LOG"   # запись в лог
find "$DEST" -name 'docs_*.tar.gz' -mtime +7 -delete     # удалить старше 7 дней

