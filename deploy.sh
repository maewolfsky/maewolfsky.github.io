#!/bin/bash

MINIMA_DIR=$(pwd)
SITE_DIR=~/git/maewolfsky.github.io

echo "Making sure site repo is up to date"
cd $SITE_DIR && git pull

echo "Building site"
cd $MINIMA_DIR && script/build

echo "Copying site to repo"
cd $MINIMA_DIR/_site && cp -r * $SITE_DIR
cd $SITE_DIR

echo "Now run the following commands to commit"
echo "git add ."
echo "git commit -m 'Some message'"
echo "git push"
