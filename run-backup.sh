#!/bin/sh
rm -r /bw-backup/attachments /bw-backup/db.sqlite3
sqlite3 /bw-data/db.sqlite3 ".backup '/bw-backup/db.sqlite3'"
cp -r /bw-data/attachments /bw-backup/attachments
git add .
git commit -m "Update $(date)"
git push
