FROM node:7.7.1
RUN npm install webpack -g

RUN mkdir -p /opt/matrix/
RUN chown -R node:node /opt/matrix
USER node

WORKDIR /opt/matrix/
COPY package.json /opt/matrix/

RUN npm install
#CMD /bin/bash
CMD npm start
