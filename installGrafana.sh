#!/bin/bash

#install apt-transport and wget
sudo apt-get install -y apt-transport-https
sudo apt-get install -y software-properties-common wget

#install the latest Grafana OSS release
wget -q -O - https://packages.grafana.com/gpg.key | sudo apt-key add

#add repo for stable releases
echo "deb https://packages.grafana.com/oss/deb stable main" | sudo tee -a /etc/apt/sources.list.d/grafana.list 

#update and install
sudo apt-get update
sudo apt-get install grafana