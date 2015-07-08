#!/bin/bash -e

echo
echo 'Ensure database exists.'
echo '---------------'
/root/zabbix/createdb.sh
echo
#debug
#for i in $(seq 1 10000); do
#sleep 10
#done

echo
echo 'Starting crond'
echo '---------------'
/usr/sbin/crond -n
echo
