#!/bin/bash
sudo yum update
sudo yum -y install git
sudo yum -y install docker
sudo usermode -a -G docker ec2-user
sudo systemctl start docker
sudo systemctl enable docker
sudo chkconfig docker on
sudo curl -L https://github.com/docker/compose/releases/download/1.22.0/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose version
