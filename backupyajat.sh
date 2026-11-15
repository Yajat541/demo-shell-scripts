
#!/bin/bash

<<info
this will take periodic backups
./backupyajat.sh <source> <dest>
info

src=$1

dest=$2

timestamp=$(date '+%Y-%m-%d_%H-%M-%S')

zip -r "$dest/backup-$timestamp.zip" $src > /dev/null

aws s3 sync $dest s3://tws-backups-dy 

echo "backupdone"






