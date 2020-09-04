#!/bin/bash
echo "Updating Virtual Servers in SG.VN subnet"
ansible-playbook /etc/ansible/my_playbook/update_server_with_var.yml -e "MYHOST=vm"
echo "Servers update completed"