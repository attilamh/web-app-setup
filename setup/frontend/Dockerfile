FROM node:7.7.1
RUN npm install webpack -g

RUN mkdir -p /opt/matrix/
RUN chown -R node:node /opt/matrix
WORKDIR /opt/matrix/

USER node
RUN npm install
#CMD /bin/bash
CMD npm start
