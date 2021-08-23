FROM node:alpine

WORKDIR /app

COPY ./package.json ./

RUN npm install -g npm@7.21.0

RUN npm install

COPY ./ ./

RUN npm run build