#!/bin/bash

echo ""
echo "date"
date

echo ""
echo "creating backup folder"
mkdir -p backup

echo ""
echo "copying logs..."
cp /var/log/system.log backup/system_backup.log 2>/dev/null
echo""
echo "Disk Usage"
df -h

echo""
echo "memory Usage:"
free -m

echo ""
echo "CPU Processes"
top -bn1 | head -10

echo ""
echo "Running processes"
ps -ef | head 
