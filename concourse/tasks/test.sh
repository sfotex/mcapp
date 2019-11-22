#!/bin/bash
set -e
export ROOT_FOLDER=$( pwd )
export REPO=repo
 
M2_HOME="${HOME}/.m2"
M2_CACHE="${ROOT_FOLDER}/maven"
GRADLE_HOME="${HOME}/.gradle"
GRADLE_CACHE="${ROOT_FOLDER}/gradle"
 
echo "Generating symbolic links for caches"
 
[[ -d "${M2_CACHE}" && ! -d "${M2_HOME}" ]] && ln -s "${M2_CACHE}" "${M2_HOME}"
[[ -d "${GRADLE_CACHE}" && ! -d "${GRADLE_HOME}" ]] && ln -s "${GRADLE_CACHE}" "${GRADLE_HOME}"


spring-boot-concourse/gradlew --build-file spring-boot-concourse/build.gradle clean test
spring-boot-concourse/gradlew --build-file spring-boot-concourse/build.gradle build
cp spring-boot-concourse/build/libs/*.jar build-output/
cp spring-boot-concourse/Dockerfile build-output/