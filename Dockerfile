FROM openjdk:8-jdk-alpine
COPY target/*.jar /docker/app.jar
WORKDIR /docker
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/docker/app.jar"]