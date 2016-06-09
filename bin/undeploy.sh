#!/bin/bash
# undeploy app form tomcat clusters

if [ $# == 1 ]; then
  for x in a b
    do
      rm /opt/tomcat8-$x/webapps/$1.war
    done
else
  echo "please specify the app name."
fi