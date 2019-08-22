FROM openjdk:8u212-jdk-slim

LABEL maintainer="shanqyeet@gmail.com"

VOLUME /tmp

EXPOSE 8080

ARG JAR_FILE=target/CodeStatteConverter

ADD ${JAR_FILE} CodeStatteConverter.jar

ENTRYPOINT ["java", "-Djava.security.edg=file:/dev/./urandom", "-jar", "/CodeStatteConverter.jar"]
