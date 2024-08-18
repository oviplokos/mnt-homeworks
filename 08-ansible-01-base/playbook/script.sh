#!/bin/bash 
docker run -dit --name centos7 pycontribs/centos:7 sleep 6000000
docker run -dit --name ubuntu pycontribs/ubuntu:latest sleep 6000000
docker run -dit --name fedora pycontribs/fedora sleep 6000000
ansible-playbook -i ./inventory/prod.yml site.yml --ask-vault-pass
docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)