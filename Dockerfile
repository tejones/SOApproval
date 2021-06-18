FROM node:16

WORKDIR  /usr/src/soapproval

COPY package*.json ./

RUN npm install
RUN npm install ngrok -g


COPY . .

# Build frontend JS assets
RUN npm run build

EXPOSE 8081

CMD [ "npm", "start" ]