FROM ubuntu:trusty
MAINTAINER zachary_marv 92maza@gmail.com

RUN apt-get update && apt-get install -y nodejs
RUN apt-get install -y npm
EXPOSE 80
COPY / /
RUN npm install
CMD ["nodejs", "bin/www"]

