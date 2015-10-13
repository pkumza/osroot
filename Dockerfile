FROM ubuntu:trusty
MAINTAINER zachary_marv 92maza@gmail.com

RUN apt-get update && apt-get install -y nodejs
RUN apt-get install -y npm
RUN npm install
EXPOSE 80
COPY / /
CMD ["nodejs", "bin/www"]

