#!/bin/bash

# get target folder and number of files as input arguments
folder=$1
num_files=$2
user=$3
group=$4

# create target folder if it doesn't exist
if [ ! -d "$folder" ]; then
  mkdir "$folder"
fi

# create specified number of files in the target folder
for ((i=1; i<=num_files; i++)); do
  touch "$folder/file$i"
  chown $user:$group "$folder/file$i"
done

echo "Successfully created $num_files files in $folder."
