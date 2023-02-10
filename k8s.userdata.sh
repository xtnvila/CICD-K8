#!/bin/bash
sudo su

apt-get update  

apt-get install docker.io -y

service docker restart  

curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add - 

echo "deb http://apt.kubernetes.io/ kubernetes-xenial main" >/etc/apt/sources.list.d/kubernetes.list

apt-get update

apt install kubeadm=1.20.0-00 kubectl=1.20.0-00 kubelet=1.20.0-00 -y  



