#!/bin/sh
set -e
mcapp/gradlew --build-file mcapp/build.gradle build
copy mcapp/build/libs/*.jar build-output/