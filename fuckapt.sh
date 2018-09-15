#!/bin/bash

mv /var/lib/dpkg/info /var/lib/dpkg/info.bak

mkdir /var/lib/dpkg/info

apt update && apt upgrade -y

mv /var/lib/dpkg/info/* /var/lib/dpkg/info.bak

rm -rf /var/lib/dpkg/info

mv /var/lib/dpkg/info.bak /var/lib/dpkg/info
