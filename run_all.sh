#!/bin/bash

if [ ! -f inventory ]; then
    echo "Need inventory file"
    exit 1
fi

ansible-playbook -i inventory k8s-client.yml
ansible-playbook -i inventory ibmcloud-client.yml
ansible-playbook -i inventory cf-client.yml
ansible-playbook -i inventory docker.yml
ansible-playbook -i inventory hashicorp.yml
ansible-playbook -i inventory istio-client.yml
ansible-playbook -i inventory git-repos.yml
