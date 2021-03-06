#!/bin/bash

# NOTE 1: The name of the Rails app is kept below 30 characters long to
# conform to Heroku's restrictions.
# NOTE 2: The name of the Rails app has the time of creation encoded to
# ensure uniqueness.
<<<<<<< HEAD
# NOTE 3: The time stamp in the Rails app name includes seconds to
=======
# NOTE 3: The time stamp in the Rails app name includes milliseconds to
>>>>>>> 6f549665240d555beef3a7ae65bdef00f35cc7aa
# ensure uniqueness even if a large number of people (perhaps in a workshop)
# using Rails Neutrino create apps simultaneously.

bash credentials.sh

mkdir -p tmp
echo 'N' > tmp/host_env.txt
echo 'N' > tmp/from_scratch.txt
echo 'Y' > tmp/dockerize.txt
echo 'N' > tmp/add_lint.txt
echo 'N' > tmp/add_vulnerability_tests.txt
<<<<<<< HEAD
echo 'N' > tmp/add_other.txt
echo 'N' > tmp/annotate.txt

DATE=`date -u +%Y%m%d-%H%M%S-%3N`
APP_NAME="railv2-$DATE"
=======
echo 'N' > tmp/add_static_pages.txt
echo 'N' > tmp/add_other.txt
echo 'N' > tmp/annotate.txt

DATE=`date -u +%Y%m%d-%H%M%S`
APP_NAME="rails6v2-$DATE"
>>>>>>> 6f549665240d555beef3a7ae65bdef00f35cc7aa

mkdir -p log
$PWD/build-rails "$APP_NAME" 2>&1 | tee log/short-$DATE.txt
