FROM mhart/alpine-node:11 AS builder
WORKDIR /app
COPY ./frontend/data .
RUN npm install
RUN npm run build

FROM nginx
COPY --from=builder /app/build /etc/nginx/html
COPY ./default.conf /etc/nginx/conf.d/default.conf
