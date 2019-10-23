# Dapp2

High-level Requirements: Using automation spin up an environment which will allow to connect to a server on port 80 or 8080 and serve a bit of simple HTML content from a data storage source. Its a small application in NodeJS to connect to the database, query it, and return the result. You just spin up the environment using a single command `docker-compose up`. We should only have to then connect to the instances IP address with a browser to see the resulting data returned. 

1) Make sure we have docker installed

2) Download following files

https://raw.githubusercontent.com/ukrishnab/Dapp2/master/web-app.js
https://raw.githubusercontent.com/ukrishnab/Dapp2/master/dockerfile
https://raw.githubusercontent.com/ukrishnab/Dapp2/master/docker-entrypoint.sh
https://raw.githubusercontent.com/ukrishnab/Dapp2/master/docker-compose.yml

3) grant execute permission to docker-entrypoint.sh from the above file.

4) run following command:
 docker-compose up -d
 
5) check following URL which will return table data from mysql default schema information_schema.tables.
 http://172.20.128.2:8080
