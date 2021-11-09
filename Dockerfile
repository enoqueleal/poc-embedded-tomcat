FROM openjdk:8-jdk-alpine as build
WORKDIR application

MAINTAINER enoquefelipe@gmail.com

COPY mvnw .
COPY .mvn .mvn
COPY pom.xml .
COPY src src

RUN chmod +x mvnw
RUN ./mvnw install -DskipTests

RUN cp /application/target/*.jar app.jar

FROM openjdk:8-jdk-alpine
WORKDIR application

COPY --from=build application/ ./
ENTRYPOINT ["java","-jar","./app.jar"]
