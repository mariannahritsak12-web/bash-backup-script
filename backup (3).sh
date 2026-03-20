#!/bin/bash

if [[ $# != 2 ]]
then
  echo "backup.sh target_directory_name destination_directory_name"
  exit 1
fi

if [[ ! -d $1 ]] || [[ ! -d $2 ]]
then
  echo "Invalid directory path provided"
  exit 1
fi

targetDirectory=$1
destinationDirectory=$2

echo "Target directory: $targetDirectory"
echo "Destination directory: $destinationDirectory"

currentTS=$(date +%s)

backupFileName="backup-${currentTS}.tar.gz"

origAbsPath=$(pwd)

cd $destinationDirectory
destDirAbsPath=$(pwd)

cd $origAbsPath
cd $targetDirectory

yesterdayTS=$(($currentTS - 24 * 60 * 60))

declare -a toBackup

for file in * 
do
  file_last_modified_date=$(date -r "$file" +%s)
  if [[ $file_last_modified_date -gt $yesterdayTS ]]
  then
    toBackup+=("$file")
  fi
done

if [[ ${#toBackup[@]} == 0 ]]
then
  echo "No files to back up"
  exit 1
fi

tar -czvf  $backupFileName "${toBackup[@]}"

mv "$backupFileName" $destDirAbsPath
