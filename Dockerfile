# Use Tomcat as base image
FROM tomcat:9.0

# Remove default ROOT webapp
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Copy our WAR into Tomcat
COPY target/small-webapp.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080

CMD ["catalina.sh", "run"]
