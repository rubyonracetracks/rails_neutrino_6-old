#!/bin/bash
set -e

BRANCH_NAME='01-02-docker_nuking_scripts'

# AGENDA
# * Add the docker/nuke and docker/nukec scripts (for resetting the Docker environment)

echo '#######################################'
echo 'Unit 1 Chapter 2: Docker Nuking Scripts'
echo '#######################################'

git checkout -b $BRANCH_NAME

mkdir -p docker
mv mod-01-02-docker_nuke docker/nuke
mv mod-01-02-docker_nukec docker/nukec

git add .
git commit -m "Added Docker nuking scripts"
git checkout main
git merge $BRANCH_NAME
