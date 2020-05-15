#!/bin/bash
export personal_access_token=$(cat ../personal-access-token.txt)
echo --------------------------------------------------------
echo -
echo -  Using personal access token:
echo -
echo -    $personal_access_token
echo -
echo --------------------------------------------------------

docker run \
 --name jenkins-sandbox \
 -p 8080:8080 \
 -v $PWD/jenkins.yaml:/var/jenkins_home/casc_configs/jenkins.yaml \
 -e personal_access_token=$personal_access_token \
 docker-jenkins-sandbox
