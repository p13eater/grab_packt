FROM gliderlabs/alpine:3.3
RUN apk-install -X http://alpine.gliderlabs.com/alpine/v3.2/main 'nodejs<0.13'

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY package.json /usr/src/app/
RUN npm install
RUN touch /usr/src/app/.env
COPY . /usr/src/app

CMD [ "npm", "start" ]docker