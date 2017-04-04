FROM node:0.10
MAINTAINER me+docker@andrewjkerr.com
RUN mkdir /app
COPY package.json /app/
RUN cd /app; npm install
COPY * /app/
RUN cd /app
CMD node /app/bot.js /app/config.js
