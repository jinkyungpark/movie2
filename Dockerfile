FROM openjdk:17-jdk-slim
RUN mkdir "/mnt/upload"
WORKDIR /app
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]