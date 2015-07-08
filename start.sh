#!/bin/bash -e

echo
echo 'Ensure database exists.'
echo '---------------'
for i in $(seq 1 10000); do
  sleep 10
done

/root/zabbix/createdb.sh
echo

echo
echo 'Starting crond'
echo '---------------'
/usr/sbin/crond -n
echo
