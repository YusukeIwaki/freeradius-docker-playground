#!/bin/sh
set -e

cd /etc/raddb/certs
./bootstrap
cd /

exec "$@"
