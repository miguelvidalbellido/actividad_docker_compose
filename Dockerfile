# ETAPA 1: install
FROM node:19-alpine as install
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install

# ETAPA 2: start
FROM node:19-alpine as start
WORKDIR /usr/src/app
RUN apk update && apk add bash
COPY --from=install /usr/src/app/node_modules ./node_modules
COPY . .
EXPOSE 3000
