#!/bin/bash

remote_host=$1

if [ -z $remote_host ]; then
    echo "Usage: $0 <remote_host>"
    exit 1
fi

ssh $remote_host 'sudo apt-get update; sudo apt-get -y install python' 
