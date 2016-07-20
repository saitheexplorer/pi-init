#!/bin/bash -x

if [ "$(id -u)" != "0" ]; then
   echo "This script must be run as root." 1>&2
   exit 1
fi

apt-get update

PACKAGES=("sudo git apt-utils nano autoconf raspi-config")

apt-get install -y $PACKAGES
apt-get upgrade

raspi-config
