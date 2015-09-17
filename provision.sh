#!/bin/sh

set -e

sed -i 's,http:[^ ]*,mirror://mirrors.ubuntu.com/mirrors.txt,' /etc/apt/sources.list
export DEBIAN_FRONTEND=noninteractive
apt update
apt install -yy apache2

a2enmod cgi
service apache2 restart
