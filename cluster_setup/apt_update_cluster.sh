#!/bin/bash
echo "Update Nodes in Kubernetes cluster"
ansible-playbook /etc/ansible/my_playbook/update_server_with_var.yml -e "MYHOST=cluster" -u root
echo "Nodes update completed"