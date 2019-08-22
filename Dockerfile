FROM openjdk:8u212-jdk-slim

LABEL maintainer="shanqyeet@gmail.com"

VOLUME /tmp

EXPOSE 8080

ARG JAR_FILE=target/codestateconverter

ADD ${JAR_FILE} codestateconverter.jar

ENTRYPOINT ["java", "-Djava.security.edg=file:/dev/./urandom", "-jar", "/codestateconverter.jar"]
