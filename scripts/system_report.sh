#!/usr/bin/env bash
set -Eeuo pipefail

echo "=================================="
echo "       LINUX SYSTEM REPORT"
echo "=================================="

echo "Date and time: $(date)"
echo "Current user:  $(id -un)"
echo "Hostname:      $(hostname)"

echo
echo "----- System Uptime -----"
uptime

echo
echo "----- Disk Usage -----"
df -h /

echo
echo "----- Memory Usage -----"
if command -v free >/dev/null 2>&1; then
    free -h
else
    echo "The free command is not installed."
fi

echo
echo "System report completed."
