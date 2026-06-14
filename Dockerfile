FROM node:18-alpine
WORKDIR /usr/src/app
COPY app/package*.json ./
RUN npm init -y && npm install express
COPY app/ ./
EXPOSE 80
CMD [ "node", "server.js" ]
