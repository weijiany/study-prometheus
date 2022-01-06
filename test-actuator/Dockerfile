FROM gradle:7.3.3-jdk11
WORKDIR /app
COPY . .
RUN gradle clean bootJar
ENTRYPOINT ["java", "-jar", "build/libs/test-actuator-0.0.1-SNAPSHOT.jar"]
