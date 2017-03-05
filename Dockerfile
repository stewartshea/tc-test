FROM tomcat:latest

COPY tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml

ADD deploywar.sh /root/deploywar.sh

RUN \
  chmod a+x /root/deploywar.sh && \ 
  bash /root/deploywar.sh; exit 0

EXPOSE 8080
CMD ["catalina.sh", "run"]
