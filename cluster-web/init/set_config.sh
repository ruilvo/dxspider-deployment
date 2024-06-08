#!/bin/sh

# Copyleft OE5JFE Joe Fellner, Austria
# Init script to set DXSpider config parameters in /var/www/html/db_config_dxspider.php
# For use with erseco/alpine-php-webserver

sed -e "s/\(\$servername[[:space:]]*=[[:space:]]*\).*$/\1\"${CLUSTERWEB_DB_CONTAINERHOSTNAME}\";/" \
    -e "s/\(\$username[[:space:]]*=[[:space:]]*\).*$/\1\"${CLUSTERWEB_USER}\";/" \
    -e "s/\(\$password[[:space:]]*=[[:space:]]*\).*$/\1\"${CLUSTERWEB_PASSWORD}\";/" \
    -e "s/\(\$dbname[[:space:]]*=[[:space:]]*\).*$/\1\"${CLUSTERWEB_DATABASE}\";/" \
    -e "s/\(\$dbport[[:space:]]*=[[:space:]]*\).*$/\1\"${CLUSTERWEB_DB_PORT}\";/" \
    -e "s/\(\$clustercall[[:space:]]*=[[:space:]]*\).*$/\1\"${CLUSTER_CALLSIGN}\";/" \
	< /var/www/html/db_config_dxspider.php.issue > /var/www/html/db_config_dxspider.php

rm -f /var/www/html/db_config_dxspider.php.issue # cleanup files
rm -f /var/www/html/test.html # cleanup files
