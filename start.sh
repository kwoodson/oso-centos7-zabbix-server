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
echo 'Starting zabbix'
echo '---------------'
/usr/sbin/zabbix_server -c /etc/zabbix/zabbix_server.conf
echo

while true; do
  sleep 5
done

