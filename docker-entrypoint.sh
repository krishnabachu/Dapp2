#!/bin/sh

chown -R mysql:mysql /var/lib/mysql
/usr/sbin/service mysql start 
#/usr/sbin/service mysql start ; while true ; do sleep 100; done;
/usr/bin/node /web-app.js
