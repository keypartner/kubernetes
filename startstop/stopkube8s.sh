docker rm -f $(docker ps -aq)
sudo umount `cat /proc/mounts | grep /var/lib/kubelet | awk '{print $2}'`
sudo rm -rf /var/lib/kubelet
