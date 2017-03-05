#!/bin/bash
curl -v -u admin:admin123 nexus-openshift-docker.contactmanager.svc.cluster.local:8081/content/repositories/cctest/ab.war --output /usr/local/tomcat/webapps/ab.war
/bin/sh -c /usr/local/tomcat/catalina.sh 
