#!/usr/bin/bash


ansible-playbook -i /home/build/ansible-playbooks/inventories/dev/hosts.ini  /home/build/ansible-playbooks/roles/role_test-win-ssh/tasks/task_test-win-ssh.yml
