FROM gradle:7.3.3-jdk11 as builder
WORKDIR /app
COPY . .
RUN gradle clean bootJar


FROM openjdk:11.0.13-jre-slim
WORKDIR /app
COPY --from=builder /app/build/libs/test-actuator-0.0.1-SNAPSHOT.jar .
ENTRYPOINT ["java", "-jar", "test-actuator-0.0.1-SNAPSHOT.jar"]

