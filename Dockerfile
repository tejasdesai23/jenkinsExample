FROM openjdk:latest
EXPOSE 4443
RUN curl -fsSLO https://get.docker.com/builds/Linux/x86_64/docker-17.04.0-ce.tgz \
  && tar xzvf docker-17.04.0-ce.tgz \
  && mv docker/docker /usr/local/bin \
  && rm -r docker docker-17.04.0-ce.tgz
ADD target/jenkins-example.jar jenkins-example.jar
ENTRYPOINT ["java","-jar","/jenkins-example.jar"]