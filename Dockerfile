FROM tomcat:9-jdk17
COPY java-maven-app-1.0-SNAPSHOT /usr/local/tomcat/webapps/java-maven-app.war
RUN mkdir /app && touch /app/submissions.csv
EXPOSE 8080
CMD ["catalina.sh", "run"]
