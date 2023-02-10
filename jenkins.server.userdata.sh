#!/bin/bash
apt-get update

sudo apt update -y

sudo apt install default-jre -y

java -version

wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -

sudo sh -c 'echo deb https://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'

sudo add-apt-repository universe -y

sudo apt update -y

sudo apt-get install jenkins -y

sudo service jenkins start

apt-get install git -y

sudo apt install apt-transport-https ca-certificates curl software-properties-common -y

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable" -y

apt-cache policy docker-ce -y

sudo apt update -y

sudo apt install docker-ce -y

sudo chmod 777 /var/run/docker.sock

sudo apt install maven -y

