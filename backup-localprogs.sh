#!/bin/sh
## Backup ~/localprogs/

## Target directory where the backup file will be created:
BACKUPDIR="/media/solt87/my_passport/archives/homebackups"

## Create filename for backup file:
NAME="localprogs-backup"
SEP="--"
DATE=$( date +%Y-%m-%d--%H%M )
## Full filename (without file extension):
FILENAME=$NAME$SEP$DATE

## Create the actual archive with two logfiles:
tar -C $HOME -cvzf $BACKUPDIR/$FILENAME.tgz localprogs/ 2>&1 | \
    tee $BACKUPDIR/$FILENAME.log | \
    grep tar: | tee $BACKUPDIR/$FILENAME-tar.log

exit 0
