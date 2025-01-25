
FROM openjdk:17-jdk-slim
WORKDIR /app
ENV PORT 9988
# Add metadata about the project and maintainer
LABEL maintainer="Raju <dnsrinu143@gmail.com>"
LABEL project="Spring Boot Application"
LABEL description="This Docker image is for a Spring Boot application that serves as a REST API."
LABEL version="2.0.0"
COPY target/ci-cd-demo.jar /app/ci-cd-demo.jar
EXPOSE 9988
ENTRYPOINT ["java", "-jar", "/app/ci-cd-demo.jar"]