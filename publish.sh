#!/bin/bash

SCRIPT_DIR=$(dirname "$BASH_SOURCE")

polymer install
mkdir -p "$SCRIPT_DIR"/bower_components/rg-flashcard
cp -r index.html \
      rg-flashcard.html \
      demo \
      test \
      "$SCRIPT_DIR"/bower_components/rg-flashcard

git add bower_components
git commit -a
git push