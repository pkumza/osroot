FROM ubuntu:trusty
MAINTAINER zachary_marv 92maza@gmail.com

RUN apt-get update

RUN apt-get install -y npm

# Install Node
RUN   \
  cd /opt && \
  wget http://nodejs.org/dist/v0.10.28/node-v0.10.28-linux-x64.tar.gz && \
  tar -xzf node-v0.10.28-linux-x64.tar.gz && \
  mv node-v0.10.28-linux-x64 node && \
  cd /usr/local/bin && \
  ln -s /opt/node/bin/* . && \
  rm -f /opt/node-v0.10.28-linux-x64.tar.gz

EXPOSE 80
COPY / /
RUN npm install
CMD ["nodejs", "bin/www"]

