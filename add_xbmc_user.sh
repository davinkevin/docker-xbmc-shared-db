#!/bin/bash

mysqld &
sleep 10

echo "Adding XBMC User"
mysql -uroot -e "CREATE USER 'xbmc' IDENTIFIED BY 'xbmc';"
mysql -uroot -e "GRANT ALL ON *.* TO 'xbmc';"

echo "Stopping mysql"
mysqladmin -uroot shutdown
