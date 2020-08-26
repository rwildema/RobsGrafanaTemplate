#!/bin/bash

#install apt-transport and wget
apt-get install -y apt-transport-https
apt-get install -y software-properties-common wget

#install the latest Grafana OSS release
wget -q -O - https://packages.grafana.com/gpg.key | apt-key add

#add repo for stable releases
echo "deb https://packages.grafana.com/oss/deb stable main" | tee -a /etc/apt/sources.list.d/grafana.list 

#update and install
apt-get update
apt-get install grafana -y
