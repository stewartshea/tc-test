FROM tomcat:latest

COPY tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml

ADD deploywar.sh /root/deploywar.sh

RUN \
  ["/bin/sh", "-c", "/root/deploywar.sh > server.log 2>&1"]

EXPOSE 8080
CMD ["catalina.sh", "run"]
