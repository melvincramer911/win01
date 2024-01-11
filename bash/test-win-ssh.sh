#!/usr/bin/bash

ansible-playbook -i /home/build/ansible-playbooks/inventories/dev/hosts.ini  /home/build/ansible-playbooks/test-win-ssh.yml
