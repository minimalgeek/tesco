FROM openjdk:11-jre-slim
VOLUME /tmp
COPY target/tesco-0.0.1-SNAPSHOT.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","app.jar"]