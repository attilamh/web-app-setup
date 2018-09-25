FROM openjdk:8
#FROM maven:3.5.2-jdk-8-alpine

RUN apt-get update && apt-get -y upgrade 
RUN apt-get install -y -q vim mc syslog-ng

COPY settings.xml /root/.m2/
COPY settings.ide.xml /root/.m2/settings.ide.xml

RUN mkdir -p /opt/app/
WORKDIR /opt/app/

CMD ["sh", "-c", "./mvnw spring-boot:run"]
