
FROM node:14-slim as builder
WORKDIR /app

ENV PIXIV_API_ENTRY /api

COPY . .
RUN yarn install

CMD ["npm", "start"]
