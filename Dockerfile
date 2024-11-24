FROM docker.io/library/openjdk:11-jre-slim

# Copy artifact from Maven build
COPY target/demo-0.0.1-SNAPSHOT.jar app.jar

# Run the application
ENTRYPOINT ["java", "-jar", "/app.jar"]

