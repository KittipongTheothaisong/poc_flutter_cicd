#!/bin/sh

# Bump version and commit
flutter pub get
flutter pub run cider bump build
git add pubspec.yaml
git commit -m "bumped version to $(flutter pub run cider version)"