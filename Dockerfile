FROM node:20-slim as lib-builder
WORKDIR /usr/src/app
COPY package.json .
COPY package-lock.json* .
RUN npm ci

FROM node:20-slim as builder
WORKDIR /usr/src/app
COPY --from=lib-builder /usr/src/app/ /usr/src/app/
COPY . .
CMD ["npx", "quartz", "build", "--serve"]


FROM nginx:latest
WORKDIR /var/www/html
COPY server.conf /etc/nginx/conf.d/default.conf
COPY --from=builder /usr/src/app/public/ /var/www/html/
