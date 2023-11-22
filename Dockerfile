FROM openjdk:latest
EXPOSE 4443
ADD target/jenkins-example.jar jenkins-example.jar
ENTRYPOINT ["java","-jar","/jenkins-example.jar"]