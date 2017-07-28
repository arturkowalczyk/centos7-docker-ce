#!/bin/sh

# clean existing docker
yum remove docker docker-common docker-selinux docker-engine

# install tools
yum install -y yum-utils device-mapper-persistent-data lvm2

# add docker repo
yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

# install docker ce
yum makecache fast
yum install -y docker-ce

# service
systemctl start docker
systemctl enable docker

docker version
