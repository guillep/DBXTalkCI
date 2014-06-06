#!/bin/bash

# jenkins puts all the params after a / in the job name as well :(
export JOB_NAME=`dirname $JOB_NAME`

mv -f Platform=$NODE_NAME/* .

wget --quiet -O - get.pharo.org/$PHARO_VERSION+vm | bash

./pharo Pharo.image save $JOB_NAME --delete-old
./pharo $JOB_NAME.image --version > version.txt

REPO=http://smalltalkhub.com/mc/DBXTalk/Configurations/main
./pharo $JOB_NAME.image eval --save "Author fullName: 'jenkins'"
./pharo $JOB_NAME.image config $REPO ConfigurationOfGlorpDBX --install=${VERSION}
./pharo $JOB_NAME.image eval --save "NBPharoOpenDBX installAsCurrent. GlorpDemoTablePopulatorResource needsSetup: true. GlorpDatabaseLoginResource setLoginByName: '${BACKEND}'."
LD_LIBRARY_PATH=. ./pharo $JOB_NAME.image test --junit-xml-output "GlorpTests"

zip -r $JOB_NAME.zip $JOB_NAME.image $JOB_NAME.changes

# clean up the workspace to not occupy too much stale space on the slaves
rm -rf *.image *.changes