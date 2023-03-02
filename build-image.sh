#!/usr/bin/env bash

BUILD_DIR=build_image
EXTENSIONS_DIR=$BUILD_DIR/extensions
# EXTENSIONS=("ckanext-gla_theme")

mkdir -p $EXTENSIONS_DIR

# Copy the CKAN base stuff
cp -R ckan/* $BUILD_DIR

# Copy all extensions from the src/ directory into the EXTENSIONS_DIR
cp -R src/* $EXTENSIONS_DIR

# Build the CKAN image
pushd $BUILD_DIR
tree -L 3
make build
popd

rm -r $BUILD_DIR
