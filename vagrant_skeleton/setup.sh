#!/bin/bash

STYPE=$(hostname | grep -ioE '[a-z]+')
IPADDR=$(ifconfig | grep -iEo "10.200.2.([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-4]) ")

common () {
  echo "running common config"
}

bastion () {
  echo "running ${STYPE} config"
}

cassandra () {
  echo "running ${STYPE} config"
  common
}

case "${STYPE}" in
  'bastion')
    bastion ;
    ;;
  'cassandra')
    cassandra ;
    ;;
esac

exit 0
