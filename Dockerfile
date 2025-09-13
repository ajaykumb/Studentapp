FROM tomcat:9.0-jdk17

# Remove default webapps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your WAR to Tomcat's deployment directory and rename to ROOT.war
COPY webapp/target/webapp-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war
