#!/bin/bash
sudo service mongod stop
sudo yum erase $(rpm -qa | grep mongodb-org)
sudo rm -r /var/log/mongodb
sudo rm -r /var/lib/mongo
