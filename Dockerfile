FROM registry.access.redhat.com/ubi8/openjdk-17
COPY target/your-spring-boot-app.jar /app.jar
ENTRYPOINT ["java", "-jar", "/app.jar"]
