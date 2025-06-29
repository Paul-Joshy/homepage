#!/bin/bash

API_KEY=$(pass show neocities-api | head -n 1)
SITE_DIR="site"

if [ -z "$API_KEY" ]; then
  echo "❌ API key not found!"
  exit 1
fi

find "$SITE_DIR" -type f | while read -r file; do
  remote_path="${file#$SITE_DIR/}"  # Strip 'site/' from beginning
  echo "Uploading $file → $remote_path"

  curl -v -F "file=@$file" \
       -F "path=$remote_path" \
       -H "Authorization: Bearer $API_KEY" \
       https://neocities.org/api/upload
done

