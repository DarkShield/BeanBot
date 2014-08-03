from  ubuntu:12.10

run   echo "deb http://us.archive.ubuntu.com/ubuntu/ quantal main universe" > /etc/apt/sources.list
run   apt-get -y update
run   apt-get -y install wget git redis-server
run   apt-get -y install build-essential python
run   apt-get -y install libexpat1-dev libexpat1 libicu-dev

run   wget -O - http://nodejs.org/dist/v0.10.30/node-v0.10.30-linux-x64.tar.gz | tar -C /usr/local/ --strip-components=1 -zxv
run   npm install coffee-script hubot -g
run   hubot --create .
run   npm install --save hubot-hipchat
run   chmod 755 bin/hubot 

run   apt-get -y install supervisor --fix-missing
run   mkdir -p /var/log/supervisor

add   hubot-scripts.json hubot-scripts.json
add   ./supervisord.conf /etc/supervisor/conf.d/supervisord.conf

cmd   supervisord -n
