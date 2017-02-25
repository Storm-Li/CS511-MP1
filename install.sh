#!/bin/bash
sudo cp mongodb-org-3.4.repo /etc/yum.repo.d/
sudo yum install -y mongodb-org
sudo cp disable-transparent-hugepages /etc/init.d/disable-transparent-hugepages
sudo chmod 755 /etc/init.d/disable-transparent-hugepages
sudo chkconfig --add disable-transparent-hugepages
sudo mkdir /etc/tuned/no-thp
sudo cp tuned.conf /etc/tuned/no-thp/tuned.conf
sudo tuned-adm profile no-thp
cat /sys/kernel/mm/transparent_hugepage/enabled
cat /sys/kernel/mm/transparent_hugepage/defrag
