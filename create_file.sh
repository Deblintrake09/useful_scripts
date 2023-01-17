#!/bin/bash

# Variables for the number of files, target folder, group, and user
num_files=10
target_folder=/path/to/target/folder
group=groupname
user=username

# Create the target folder if it does not already exist
mkdir -p $target_folder

# Create the specified number of files in the target folder
for ((i=1; i<=$num_files; i++));
do
  touch "$target_folder/file$i"
  chown $user:$group "$target_folder/file$i"
done
