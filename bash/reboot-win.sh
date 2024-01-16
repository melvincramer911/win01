#!/usr/bin/bash

time  ansible-playbook -i /home/build/ansible-playbooks/inventories/dev/hosts.ini  /home/build/ansible-playbooks/reboot-win.yml

# first run was 1 minute 29 seconds !!

