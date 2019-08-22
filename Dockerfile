FROM openjdk:8u212-jdk-slim

LABEL maintainer="shanqyeet@gmail.com"

VOLUME /tmp

EXPOSE 8080

ARG JAR_FILE=target/CodeStateConverter

ADD ${JAR_FILE} CodeStateConverter.jar

ENTRYPOINT ["java", "-Djava.security.edg=file:/dev/./urandom", "-jar", "/CodeStateConverter.jar"]
