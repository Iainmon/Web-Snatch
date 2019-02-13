#!/usr/bin/env bash


echo "Cleaning export directory..."
rm -rf ./build/macos;
mkdir ./build/macos;

echo "Building..."
crystal build src/snatch.cr -o build/macos/snatch --release --no-debug;
echo "Done building!"

chmod +x ./build/macos/snatch;

echo "Creating application bundle..."
mkdir ./build/macos/Snatch.app;
mkdir ./build/macos/Snatch.app/Contents;
mkdir ./build/macos/Snatch.app/Contents/MacOS;

mv ./build/macos/snatch ./build/macos/Snatch.app/Contents/MacOS;

cp -a ./build-bundles/macos/. ./build/macos/Snatch.app/Contents/;

echo "Complete!"

echo "Running app..."
open ./build/macos/Snatch.app;
echo "Done."

