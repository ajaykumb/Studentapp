FROM tomcat:9.0-jdk17
COPY ./webapp/target/*.war /usr/local/tomcat/webapps/ROOT.war
