#!/bin/bash

# VARIABLES
APP_NAME=$1

echo "Finalize scale-ui app"

cp -f gitignoreforapp .gitignore
cp -f README_APP.md README.md

if [ $APP_NAME ]; then
  current_folder=$APP_NAME
else
  current_folder=$(basename $PWD)
fi

echo "Renaming app1 into ${current_folder}"

find . -maxdepth 3 -type d \
-not -path './node_modules/*' \
-not -path './.git/*' \
-not -path './.svelte-kit/*' \
-iname app1 -execdir mv {} ${current_folder} ';'
