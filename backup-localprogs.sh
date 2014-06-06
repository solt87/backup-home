#!/bin/sh
## Backup ~/localprogs/

## Target directory where the backup file will be created:
BACKUPDIR="/media/my_passport/archives/homebackups"

## Create filename for backup file:
NAME="localprogs-backup"
SEP="--"
DATE=`date +%Y-%m-%d--%H%M`
## Full filename (without filename extension):
FILENAME=`echo $NAME$SEP$DATE`

## Create the actual archive with two logfiles:
tar -C $HOME -cvzf $BACKUPDIR/$FILENAME.tgz $HOME/localprogs/ 2>&1 | \
    tee $BACKUPDIR/$FILENAME.log | \
    grep tar: | tee $BACKUPDIR/$FILENAME-tar.log

exit 0
