FROM ubuntu:trusty
MAINTAINER zachary_marv 92maza@gmail.com

RUN apt-get update && apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup | sudo bash -
RUN apt-get install -y nodejs
RUN apt-get install -y build-essential
EXPOSE 80
COPY / /
RUN npm install
CMD [“npm”, “start”]

