# Backup-home

These are two simple scripts I created to easily backup my needed files and directories from my home directory.

## Setting things up

To use backup-home, you will have to:
- modify backup_dirs.txt and backup_files.txt to contain the directories and files you want to back up.
  You can also create new files for this purpose. (You can use one file, I used two for clarity.)
- modify DIRLIST and FILELIST to point to the files you are using.
- modify BACKUPDIR to point to the directory of your choosing.

Obviously, you can modify any other part of the script (filename creation, tar options, what-not), but only the
aforementioned steps are needed to make the script work for you.

## Issues

It seems that tar doesn't like path or filename arguments that contain spaces. No matter what I did (escaping with backslash, surrounding in quotes, or both), tar treated the space as argument separator, and thus gave an error.
For this reason, I suggest you only use filenames and directory names that do *not* contain spaces.
