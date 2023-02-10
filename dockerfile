FROM node:14
WORKDIR /TestNodeApp
ADD package.json .
RUN npm config set cache "/root/docker_node/TestNodeApp/custom_module"
RUN chmod 777 package.json
RUN npm install
ADD . /TestNodeApp
CMD npm run frontend
EXPOSE 8083