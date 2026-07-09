FROM node:26-alpine

WORKDIR /usr/src/app

COPY app/package*.json ./

RUN npm install

COPY app/ ./

ENV NODE_ENV=production

EXPOSE 3000

CMD ["node", "server.js"]