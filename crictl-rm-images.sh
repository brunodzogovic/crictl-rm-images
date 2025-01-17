#!/bin/bash

dangling_images=$(crictl images -f dangling=true | awk 'FNR>1 {print $3}')

if [ -z "$dangling_images" ]; then
  echo "No dangling images found. Exiting."
  exit 0
else
  echo "Dangling images found. Proceeding with deletion..."
  for image in $dangling_images; do
    echo "Deleting image: $image"
    crictl rmi "$image"
  done
  echo "Dangling images deleted successfully."
fi
