#!/bin/bash
SOURCEFOLDER=$1
TARGETFOLDER=$2

if [ ! $# == 2 ]
then
  echo "$0 requires two folders: Source Folder Destination Folder"

  elif [ -d "$SOURCEFOLDER" ] && [ -d "$TARGETFOLDER" ]
  then
       echo "copy folder $SOURCEFOLDER to $TARGETFOLDER"
       rsync -av $SOURCEFOLDER $TARGETFOLDER
  else
     echo "BAD JOB!"
fi
