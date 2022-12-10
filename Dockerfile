FROM openjdk:8-jdk-alpine
# FROM maven:3.6.1-jdk-8-alpine
WORKDIR /app
COPY target/*.jar app.jar

RUN apk update \
    && apk upgrade \
    && apk --no-cache add --update apk-tools curl build-base supervisor cups-client dcron bind-tools rsync

ENTRYPOINT ["java", "-jar", "app.jar"]

# COPY src/*  src/
# COPY .mvn/ .mvn/
# COPY mvnw    .
# COPY pom.xml    .
