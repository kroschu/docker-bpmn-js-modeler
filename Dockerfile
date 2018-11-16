FROM resin/raspberry-pi-node

RUN apt-get update -y
WORKDIR /home/app
ADD . .
RUN npm install 2>/dev/null
CMD node_modules/http-server/bin/http-server
