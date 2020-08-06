#!/bin/bash

export MAVEN_HOME="/usr/share/maven:$PATH"
mvn -B -DskipTests clean package
