
FROM openjdk:8-jre-alpine
RUN apk update -y && apk add bash
WORKDIR /app
COPY /target/docker-java-app-example.war /app
# Make port 8080 available to the world outside this container
EXPOSE 8080

CMD ["java", "-war", "docker-java-app-example.war"]
