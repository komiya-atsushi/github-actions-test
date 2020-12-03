FROM node:lts-alpine

WORKDIR /app
RUN apk add --update-cache build-base python2
COPY package.json /app/
COPY package-lock.json /app/
RUN npm i

CMD ["npm", "start"]