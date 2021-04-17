#!/bin/bash
set -e

# AGENDA:
# * Removing instances of .DS_Store
# * Updating .gitignore to prevent accidental additions of .DS_Store
#   and other irrelevant files and to mark the initial contents
# * Updating the Gemfile to mark the initial contents
# * NOTE: credentials.sh and config/rails_neutrino_timestamp.txt were added
#   prior to the execution of this script.

echo '###################'
echo 'UNIT 1: BASIC SETUP'
echo '###################'

echo '###########################'
echo 'Unit 1 Chapter 1: GITIGNORE'
echo '###########################'

ruby mod-01-01.rb

git add .
git commit -m "Updated .gitignore"
