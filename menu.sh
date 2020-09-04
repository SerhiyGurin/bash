#!/bin/bash
echo "What do you want to do?:"
echo "1 - update servers in cluster and vps"
echo "2 - update nodes in cluster"
echo "3 - update virtual servers"
echo "4 - reboot nodes in cluster"
echo "5 - shutdown nodes in clusters"
echo "6 - shutdown vps"
echo "7 - exit"
read doing
case $doing in
1)
/home/sg/control-vps/apt_update_vps.sh;;
2)
/home/sg/cluster_setup/apt_update_cluster.sh;;
3)
/home/sg/control-vps/apt_update_vm.sh;;
4)
/home/sg/cluster_setup/reboot_cluster.sh;;
5)
/home/sg/cluster_setup/shutdown-cluster.sh;;
6)
/home/sg/control-vps/shutdown_vps.sh;;
7)
exit 0;;
*)
esac