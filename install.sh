#!/bin/bash

# install docker if not installed
if [ -x "$(command -v docker)" ]; then
    echo "docker installed, skip it."
else
    echo "docker is not installed, installing docker ..."

    echo "uninstall old versions"
    sudo yum remove docker \
                  docker-client \
                  docker-client-latest \
                  docker-common \
                  docker-latest \
                  docker-latest-logrotate \
                  docker-logrotate \
                  docker-engine

    echo "install using the repository"
    echo "set up the repository"
    sudo yum install -y yum-utils
    sudo yum-config-manager \
        --add-repo \
        https://download.docker.com/linux/centos/docker-ce.repo

    echo "install docker engine"
    sudo yum install -y docker-ce docker-ce-cli containerd.io

    echo "start docker"
    sudo systemctl start docker
fi
