#!/bin/bash
export GRADLE_HOME=/var/vendor/gradle-2.13
PATH=$PATH:$GRADLE_HOME/bin

APP_NAME=SessionApp

cd /var/repo/TomcatCluster
git pull

cd $APP_NAME
gradle clean war

WAR_PATH=/var/repo/TomcatCluster/$APP_NAME/build/libs
cp $WAR_PATH/$APP_NAME-1.0-SNAPSHOT.war $WAR_PATH/$APP_NAME.war

BASE_PATH=/opt/tomcat8-
for x in a b
do
  INSTANCE_PATH=$BASE_PATH$x/webapps
  cp $WAR_PATH/$APP_NAME.war $INSTANCE_PATH
done