FROM maven:3.3.9-jdk-8-alpine

COPY settings.xml /usr/share/maven/ref/
COPY settings.ide.xml /usr/share/maven/ref/settings.ide.xml

RUN mkdir -p /opt/matrix/
WORKDIR /opt/matrix/

CMD mvn spring-boot:run
