#!/bin/bash

# run vpn container
echo "run vpn container"
sudo docker pull $CI_REGISTRY_IMAGE/outside:latest
sudo docker container rm -f vpn-outside-instance
sudo docker run --name vpn-outside-instance -d -p 1588:1588 $CI_REGISTRY_IMAGE/outside:latest
