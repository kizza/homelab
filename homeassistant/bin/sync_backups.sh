#!/usr/bin/env bash

#
# Prune backups
#
num_to_keep=10
files_to_prune=$(ls -tp /config/backups | grep -v '/$' | tail -n +$((num_to_keep+1)))
if [ -z "$files_to_prune" ]; then
  echo "No backups to prune."
else
  echo "Pruning older backups:"
  echo "$files_to_prune" | while read -r file; do
    echo "Deleting: $backup_dir/$file"
    rm -f -- "/config/backups/$file"
  done
  echo "Pruned $(echo "$files_to_prune" | wc -l) backups."
fi

#
# Upload backups (via https://github.com/andreafabrizi/Dropbox-Uploader)
#
echo "Uploading..."
current_dir="$(dirname "$(readlink -f "$0")")"
"$current_dir/dropbox_uploader.sh" upload /config/backups/* /
echo "Done"
