#!/usr/bin/bash

cp -n  ~/home/build/.bashrc  /home/build/ansible-playbooks/outside
git add *
git commit -m $1
git push -u origin main

