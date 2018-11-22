#!/bin/bash

FOLDER=/tmp/1

cd $FOLDER
for dir in */
do
  base=$(basename "$dir")
  tar --use-compress-program="pigz --best --recursive" -cf "${base}.tar.gz" "$dir"
done
