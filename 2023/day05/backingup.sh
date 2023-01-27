#!/bin/bash

datetime=$(date +%Y-%m-%d_%H-%M-%S)
if [ ! -d "backups" ]; then
    mkdir -p backups
fi

tar -cvzf backups/backup_$datetime.tar.gz ./*
echo "Backup complete: backups/backup_$datetime.tar.gz"