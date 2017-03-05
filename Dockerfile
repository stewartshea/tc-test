FROM tomcat:latest

COPY tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml


EXPOSE 8080
CMD ["catalina.sh", "run"]
