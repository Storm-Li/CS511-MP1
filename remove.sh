#!/bin/bash
sudo service mongod stop
sudo yum erase -y $(rpm -qa | grep mongodb-org)
sudo rm -r /var/log/mongodb
sudo rm -r /var/lib/mongo
sudo rm /etc/yum.repos.d/mongodb-org-3.4.repo
