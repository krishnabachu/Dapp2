FROM ubuntu
RUN apt-get update
RUN ["/bin/bash", "-c", "debconf-set-selections <<< 'mysql-server mysql-server/root_password password root'"]
RUN ["/bin/bash", "-c", "debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password root'"]
RUN apt-get -y install mysql-server
RUN chown -R mysql:mysql /var/lib/mysql

RUN apt-get install -y nodejs 
RUN apt-get install -y python3-pip 
RUN apt-get install -y npm

RUN npm install express mysql
ADD https://raw.githubusercontent.com/ukrishnab/Dapp2/master/web-app.js .

COPY docker-entrypoint.sh /usr/local/bin/
RUN ln -s /usr/local/bin/docker-entrypoint.sh / # backwards compat
ENTRYPOINT ["docker-entrypoint.sh"]
