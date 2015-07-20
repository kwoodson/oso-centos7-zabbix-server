#!/bin/bash -e

echo -n "Running zabbix server..."
ip=$(docker inspect $(docker ps | awk '/mysql/{print $1}') | grep IPAddress | ruby -ane 'puts $F[1].split("\"")[-2]')
docker run -ti  -p 10050:10050 -p 10051:10051 -e "MYSQL_HOST=${ip}" -e "MYSQL_PASSWORD=redhat" -e "MYSQL_USER=zabbix" -e "MYSQL_DATABASE=zabbix" -e "MYSQL_PORT=3306" oso-rhel7-zabbix-server $@
echo "Done."
