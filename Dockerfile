FROM tomcat:latest

COPY tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml

ADD deploywar.sh /root/deploywar.sh

RUN \
  /bin/sh /root/deploywar.sh

EXPOSE 8080
CMD ["catalina.sh", "run"]
