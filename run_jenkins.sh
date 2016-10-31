#!/bin/bash

# This script would run jenkins
echo 'Running command: docker run --name rajenkins --publish 8080:8080 --publish 50000:50000 --volume $PWD/jenkins_home:/var/jenkis_home jenkins:2.19.1'
docker run --name rajenkins --detach --publish 8080:8080 --publish 50000:50000 --volume "`pwd`/jenkins_home:/var/jenkis_home" jenkins:2.19.1
