#!/bin/sh
set -e

cd /etc/freeradius/3.0/certs
sudo -u freerad bash ./bootstrap
cd /

exec "$@"
