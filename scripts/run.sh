#!/usr/bin/env bash


echo "Cleaning export directory..."
rm -rf ./build/macos;
mkdir ./build/macos;

echo "Building..."
crystal build src/delme.cr -o build/macos/exec;
echo "Done building!"

chmod +x ./build/macos/exec;

echo "Creating application bundle..."
mkdir ./build/macos/exec.app;
mkdir ./build/macos/exec.app/Contents;
mkdir ./build/macos/exec.app/Contents/MacOS;

mv ./build/macos/exec ./build/macos/exec.app/Contents/MacOS;

cp -a ./build-bundles/macos/. ./build/macos/exec.app/Contents/;

echo "Complete!"

echo "Running app..."
open ./build/macos/exec.app;
echo "Done."