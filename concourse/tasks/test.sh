#!/bin/sh
set -e
spring-boot-concourse/gradlew clean test
cp spring-boot-concourse/build/libs/*.jar build-output/