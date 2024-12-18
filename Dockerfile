
FROM openjdk:8-jre-alpine
RUN apk update -y && apk install git -y && apk install maven -y && apk add bash
WORKDIR /app
RUN git clone https://github.com/BinduPrivate/docker-spring-boot-java-web-service-example.git
RUN mvn clean package
COPY /target/docker-java-app-example.war /app
# Make port 8080 available to the world outside this container
EXPOSE 8080

CMD ["java", "-war", "docker-java-app-example.war"]
