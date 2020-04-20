FROM node:lts-alpine

COPY . /app
WORKDIR /app

USER node

RUN npm install

EXPOSE $PORT

CMD [ "npm", "start" ]
