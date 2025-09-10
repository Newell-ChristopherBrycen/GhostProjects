#!/bin/bash


cat Applications/homepage/homepage-configmap.yaml > scripts/homepage-configmap.yaml


# This script encodes the pictures for the homepage config map



for file in Content/Backgrounds/*
do
  filename_ext=$(basename "$file")
  filename=${filename_ext%.*}
  file64=$(base64 "$file" | sed 's/^/    /')
  echo "  $filename: |" >> scripts/homepage-configmap.yaml
  echo "$file64"  >> scripts/homepage-configmap.yaml
done

for file in Content/icons/*
do
  filename_ext=$(basename "$file")
  filename=${filename_ext%.*}
  file64=$(base64 "$file" | sed 's/^/    /')
  echo "  $filename: |" >> scripts/homepage-configmap.yaml
  echo "$file64"  >> scripts/homepage-configmap.yaml
done