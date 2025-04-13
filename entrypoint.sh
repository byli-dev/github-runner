#!/bin/bash

mv -n /home/config/* /home/runner
cd /home/runner
./config.sh --url https://github.com/${ORGANIZATION} --token ${REG_TOKEN} --name ${NAME}-$(date +%s) --work ${WORKDIR} --unattended
./run.sh
