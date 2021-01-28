FROM node:latest

WORKDIR /usr/app

ENV PORT 3000

EXPOSE ${PORT}

COPY ./package*.json ./

RUN npm ci --production

COPY . .

CMD  npm run start
