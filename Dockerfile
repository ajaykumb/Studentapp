FROM tomcat:9.0-jdk17
COPY webapp/target/webapp.war /usr/local/tomcat/webapps/
