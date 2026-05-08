# FROM openjdk:21-jdk-slim

# EXPOSE 8080

# COPY ./build/libs/my-app-1.0-SNAPSHOT.jar /usr/app/
# WORKDIR /usr/app

# ENTRYPOINT ["java", "-jar", "my-app-1.0-SNAPSHOT.jar"]

FROM eclipse-temurin:8-jre
EXPOSE 8080
COPY ./build/libs/java-app-1.0-SNAPSHOT.jar /usr/app/
WORKDIR /usr/app
ENTRYPOINT ["java", "-jar", "java-app-1.0-SNAPSHOT.jar"]