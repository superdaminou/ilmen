FROM node:20-slim as lib-builder
WORKDIR /usr/src/app
COPY package.json .
COPY package-lock.json* .
RUN npm ci

FROM node:20-slim as build
WORKDIR /usr/src/app
COPY --from=lib-builder /usr/src/app/ /usr/src/app/
COPY . .
RUN ["npx", "quartz", "build"]


FROM nginx:latest
COPY server.conf /etc/nginx/conf.d/default.conf
COPY --from=build /usr/src/app/public/ /var/www/html/
