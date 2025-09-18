#!/bin/bash

for file in Content/Backgrounds/*
do
  filename_ext=$(basename "$file")
  filename=${filename_ext%.*}
  file64=$(base64 "$file" | sed 's/^/    /')
  echo "  $filename: |" >> scripts/result.txt
  echo "$file64"  >> scripts/result.txt
done

for file in Content/icons/*
do
  filename_ext=$(basename "$file")
  filename=${filename_ext%.*}
  file64=$(base64 "$file" | sed 's/^/    /')
  echo "  $filename: |" >> scripts/result.txt
  echo "$file64"  >> scripts/result.txt
done