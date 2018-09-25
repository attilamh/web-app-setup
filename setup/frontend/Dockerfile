FROM node:7.7.1

RUN apt-get update -y
RUN apt-get upgrade -y

RUN npm install webpack -g

RUN mkdir -p /opt/app/
RUN chown -R node:node /opt/app
USER node

WORKDIR /opt/app/
COPY package.json /opt/app/

RUN npm install
#CMD /bin/bash
CMD npm --silent start
