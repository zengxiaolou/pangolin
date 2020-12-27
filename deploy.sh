#!/bin/bash

# run vpn container
echo "run vpn container"
sudo docker container rm -f vpn-instance
sudo docker run --name vpn-instance -d -p 1544:1544 $CI_REGISTRY_IMAGE:latest
