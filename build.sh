#!/bin/bash

ES_HOME=/usr/share/elasticsearch
VERSION=1.0.2

mvn clean package
$ES_HOME/bin/plugin -remove elasticsearch-script-path
$ES_HOME/bin/plugin -url file:./target/releases/elasticsearch-script-path-${VERSION}.zip -install elasticsearch-script-path
service elasticsearch restart
