#!/bin/bash

if ! command -v docker &>/dev/null; then
    >&2 echo "Docker is not installed"
    exit 1
fi


docker buildx build \
    --rm \
    --tag=python_dev_docker \
    .

echo -e "\n\n\n\n\n"
echo "container python_dev_docker created, you can do :"
echo " * docker run -d -e HOST_USER_UID=\$(id -u)  --name YOUR_PROJECT -p YOUR_LOCAL_PORT:22 python_dev_docker => if you need one env by project"
echo -e "\n\n\n\n\n"
