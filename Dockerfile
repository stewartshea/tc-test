FROM tomcat:latest

COPY tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml

RUN \
curl -v -u admin:admin123 http://nexus-openshift-docker.contactmanager.svc.cluster.local:8081/content/repositories/cctest/ab.war --output /usr/local/tomcat/webapps/ab.war


EXPOSE 8080
CMD ["catalina.sh", "run"]
