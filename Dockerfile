FROM tomcat:9.0-jdk17
COPY ./*.war /usr/local/tomcat/webapps/
