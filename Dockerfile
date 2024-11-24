# Runtime Stage: OpenJDK ile uygulama çalıştırılır
FROM openjdk:11-jre-slim
WORKDIR /app

# Build edilen artifact'in kopyalanması
# Tekton pipeline'daki build adımından gelen JAR dosyasını buraya kopyalayacağız.
COPY target/demo-0.0.1-SNAPSHOT.jar app.jar

# Expose Spring Boot'un default portu
EXPOSE 8080

# Spring Boot uygulamasını başlat
ENTRYPOINT ["java", "-jar", "app.jar"]
