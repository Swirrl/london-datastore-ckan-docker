#!/usr/bin/env bash

BUILD_DIR=build_image
EXTENSIONS=("ckanext-gla_theme")

mkdir $BUILD_DIR

# Copy the CKAN base stuff
cp -r ckan/* $BUILD_DIR

# Copy the EXTENSIONS
for e in ${EXTENSIONS[@]}; do
  cp -r src/$e $BUILD_DIR/extensions
done
# Build the CKAN image

pushd $BUILD_DIR
make build
popd

rm -r $BUILD_DIR

