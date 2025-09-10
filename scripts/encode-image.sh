#!/bin/bash

# This script encodes the pictures for the homepage config map
echo "apiVersion: v1
kind: ConfigMap
metadata:
  name: pictures
  namespace: homepage
  labels:
    app.kubernetes.io/name: pictures
data:" > Applications/homepage/homepage-pictures.yaml


for file in Content/Backgrounds/*
do
  filename_ext=$(basename "$file")
  filename=${filename_ext%.*}
  file64=$(base64 "$file" | sed 's/^/    /')
  echo "  $filename: |" >> Applications/homepage/homepage-pictures.yaml
  echo "$file64"  >> Applications/homepage/homepage-pictures.yaml
done

for file in Content/icons/*
do
  filename_ext=$(basename "$file")
  filename=${filename_ext%.*}
  file64=$(base64 "$file" | sed 's/^/    /')
  echo "  $filename: |" >> Applications/homepage/homepage-pictures.yaml
  echo "$file64"  >> Applications/homepage/homepage-pictures.yaml
done