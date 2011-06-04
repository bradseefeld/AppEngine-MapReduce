#!/bin/bash
rm dist/lib/appengine-mapper.jar
ant
mvn install:install-file -DgroupId=com.google.appengine.tools -DartifactId=tools-mapreduce -Dversion=1.0.0-SNAPSHOT -Dpackaging=jar -Dfile=dist/lib/appengine-mapper.jar
mvn gae:run -DargLine=-Xmx2048m
