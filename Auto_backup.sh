#!/bin/bash

TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")

git add .

if git diff --cached --quiet; then
echo "No changes to commit"
else
git commit -m "Auto Backup on $TIMESTAMP"
git push
echo "Backup Completed at $TIMESTAMP"
fi

