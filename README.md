# Java Maven Web App

A simple enhanced Java Maven application using JSP + Servlets + Bootstrap, Dockerized for DevOps.

## Features
- Form submission
- CSV logging
- Submission viewer
- Modern Bootstrap UI

## Build & Run
```bash
mvn clean package
docker build -t java-maven-app .
docker run -p 8080:8080 java-maven-app
```

Visit [http://localhost:8080/java-maven-app](http://localhost:8080/java-maven-app)
