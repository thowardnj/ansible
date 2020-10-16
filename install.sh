#!/bin/bash
# This script will perform the tasks listed in Lab 4-1 in the RHCE 8 book

ansible all -bm yum -a 'name=httpd state=latest'
ansible all -bm service -a 'name=httpd state=started enabled=yes'
ansible all -bm user -a 'name=anna'
ansible all -bm copy -a 'src=/etc/hosts dest=/tmp/hosts'

echo "This script is complete" 


