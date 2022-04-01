#!/bin/bash
cd ../../

echo "Checking for any formatting issues in the code."
flutter format --set-exit-if-changed .

echo "Statically analyze the Dart code for any errors."
flutter analyze .
