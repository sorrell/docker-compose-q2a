#!/usr/bin/env bash

set -e

echo '########################'
echo '# RUNNING SCHEMA.SH'
echo '########################'

mysql -h localhost -u root -p${MYSQL_ROOT_PASSWORD} -e "CREATE DATABASE ${MYSQL_DB} /*\!40100 DEFAULT CHARACTER SET utf8 */;"
mysql -h localhost -u root -p${MYSQL_ROOT_PASSWORD} -e "CREATE USER ${MYSQL_USER} IDENTIFIED BY '${MYSQL_PASS}';"
mysql -h localhost -u root -p${MYSQL_ROOT_PASSWORD} -e "GRANT ALL PRIVILEGES ON ${MYSQL_DB}.* TO '${MYSQL_USER}'@'%';"
mysql -h localhost -u root -p${MYSQL_ROOT_PASSWORD} -e "FLUSH PRIVILEGES;"