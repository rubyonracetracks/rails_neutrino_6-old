#!/bin/bash

# NOTE 1: The name of the Rails app is kept below 30 characters long to
# conform to Heroku's restrictions.
# NOTE 2: The name of the Rails app has the time of creation encoded to
# ensure uniqueness.
# NOTE 3: The time stamp in the Rails app name includes milliseconds to
# ensure uniqueness even if a large number of people (perhaps in a workshop)
# using Rails Neutrino create apps simultaneously.

bash credentials.sh

mkdir -p tmp
echo 'N' > tmp/host_env.txt
echo 'Y' > tmp/from_scratch.txt
echo 'N' > tmp/dockerize.txt
echo 'N' > tmp/add_lint.txt
echo 'N' > tmp/add_vulnerability_tests.txt
echo 'N' > tmp/add_static_pages.txt
echo 'N' > tmp/add_other.txt
echo 'N' > tmp/annotate.txt

DATE=`date -u +%Y%m%d-%H%M%S`
APP_NAME="rails6v1-$DATE"

mkdir -p log
$PWD/build-rails "$APP_NAME" 2>&1 | tee log/short-$DATE.txt
