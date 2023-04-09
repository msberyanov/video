ARG PORT=8000
FROM node:13.12.0-alpine
EXPOSE $PORT

WORKDIR /app
COPY public ./public
COPY package.json ./
COPY index.js ./

RUN npm i
CMD npm start

