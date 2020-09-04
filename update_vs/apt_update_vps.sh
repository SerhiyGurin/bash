#!/bin/bash
echo "******Apdating all VPS in SG.VN subnet******"
echo "=====Updating Virtual Servers in SG.VN subnet====="
ansible-playbook /etc/ansible/my_playbook/update_server_with_var.yml -e "MYHOST=vm"
echo "****************************************************************************"
echo "=====Update Nodes in Kubernetes cluster====="
ansible-playbook /etc/ansible/my_playbook/update_server_with_var.yml -e "MYHOST=cluster" -u root
echo "******All VPS servers in SG.VN subnet has been updated******"