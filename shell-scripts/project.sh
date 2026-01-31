#!/bin/bash
set -e

# Go to repo root (script may be run from anywhere)
ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
cd "$ROOT_DIR"

# Compile contacts.c into a binary named contacts (in repo root)
gcc -g ./c-programs/contacts.c -o contacts

# Run it
./contacts

# Backup C programs folder (matches assignment style)
tar -czf contacts-backup.tar.gz ./c-programs/*

# Log timestamp
echo "Output logged at $(date)" >> project-log.txt
