FROM node:latest
LABEL MAINTAINER Mauricio Silvestre

ENV PORT=3000
ENV NODE_ENV=development

RUN git clone https://github.com/ze-termica/node-test.git
WORKDIR /node-dummy
RUN npm install
ENTRYPOINT npm start
EXPOSE 3000