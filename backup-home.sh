#!/bin/sh
## Backup needed files and folders from user's home directory.


## Target directory where the backup file will be created:
BACKUPDIR="/media/solt87/my_passport/archives/homebackups"

## From file containing the names of directories to back up:
DIRLIST=$( cat ~/backup-distro/backup-home/backup_dirs.txt )
## From file containing the names of files to back up:
FILELIST=$( cat ~/backup-distro/backup-home/backup_files.txt )

## Create filename for backup file:
NAME="home-backup"
SEP="--"
DATE=$( date +%Y-%m-%d--%H%M )
## Full filename (without file extension):
FILENAME=$NAME$SEP$DATE

## Create the actual archive with verbose output saved to a log file:
tar -C $HOME -cvhzf $BACKUPDIR/$FILENAME.tgz $DIRLIST $FILELIST 2>&1 | \
   tee $BACKUPDIR/$FILENAME.log | \
   grep tar: | tee $BACKUPDIR/$FILENAME-tar.log

exit 0
