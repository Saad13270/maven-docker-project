FROM tomcat:9-jdk17
COPY target/java-maven-app.war /usr/local/tomcat/webapps/java-maven-app.war
RUN mkdir /app && touch /app/submissions.csv
EXPOSE 8080
CMD ["catalina.sh", "run"]