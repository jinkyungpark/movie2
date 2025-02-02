FROM openjdk:17-jdk-slim
RUN mkdir "/mnt/upload"
# WORKDIR /app
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]