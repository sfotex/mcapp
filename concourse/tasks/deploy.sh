#!/bin/bash
set -e
echo "Setting names for caches"
export REPO=repo
GRADLE_HOME="${HOME}/.gradle"
GRADLE_CACHE="${ROOT_FOLDER}/gradle"
 
echo "Generating symbolic links for caches"

[[ -d "${GRADLE_CACHE}" && ! -d "${GRADLE_HOME}" ]] && ln -s "${GRADLE_CACHE}" "${GRADLE_HOME}"


spring-boot-concourse/gradlew --build-file spring-boot-concourse/build.gradle clean test