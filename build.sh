#!/usr/bin/env sh
# Builds the mod without installing Gradle: downloads a private copy into .tools/
set -eu
G=8.10.2
mkdir -p .tools
if [ ! -d ".tools/gradle-$G" ]; then
  curl -L -o .tools/gradle.zip "https://services.gradle.org/distributions/gradle-$G-bin.zip"
  unzip -q .tools/gradle.zip -d .tools
fi
".tools/gradle-$G/bin/gradle" build --no-daemon
echo "JAR: build/libs/"
