#!/bin/sh

echo "Usage: mongo_import $db $collection"

if [$# -ne 3]; then
  echo "No db and collection name provided as arguments"
else
  echo "database: " $1
  echo "collection: " $2
  for filename in *;
    do mongoimport --db $1 --collection $2 --type json --file $filename
  done
fi
