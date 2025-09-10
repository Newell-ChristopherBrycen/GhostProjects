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
  filename=$(basename "$file")
  filename_no_ext=${filename%.*}
  file64=$(base64 $file)
  echo "$filename_no_ext: $file64" >> Applications/homepage/homepage-pictures.yaml
done

for file in Content/icons/*
do
  filename=$(basename "$file")
  filename_no_ext=${filename%.*}
  file64=$(base64 $file)
  echo "$filename_no_ext: $file64" >> Applications/homepage/homepage-pictures.yaml
done