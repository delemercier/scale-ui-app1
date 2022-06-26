#!/bin/bash

# VARIABLES
APP_NAME=$1

echo "Finalize scale-ui app: overwrite gitignore and README"

cp -f gitignoreforapp .gitignore
cp -f README_APP.md README.md

if [ -f src/routes/app_to_replace/index.svelte ];then

  if [ $APP_NAME ]; then
    new_app_folder=$APP_NAME
  else
    new_app_folder=$(basename $PWD)
  fi

  echo "Renaming app_to_replace into ${new_app_folder}"
  sed -i "s/app_to_replace/${new_app_folder}/g" src/routes/app_to_replace/index.svelte

  find . -maxdepth 3 -type d \
  -not -path './node_modules/*' \
  -not -path './.git/*' \
  -not -path './.svelte-kit/*' \
  -iname app_to_replace -execdir mv {} ${new_app_folder} ';'
fi


