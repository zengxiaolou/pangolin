#!/bin/bash

# run vpn container
echo "run vpn container"
sudo docker pull $CI_REGISTRY_IMAGE/inside:latest
sudo docker container rm -f vpn-inside-instance
sudo docker run --name vpn-inside-instance -d -p 1588:1588 $CI_REGISTRY_IMAGE/inside:latest
