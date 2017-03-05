FROM tomcat:latest

COPY tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml

RUN wget --quiet --user admin \
  --password admin123 \
  --content-disposition \
  -O /ab.war \
  "http://nexus-openshift-docker.contactmanager.svc.cluster.local:8081/content/repositories/cctest/"

EXPOSE 8080
CMD ["catalina.sh", "run"]
