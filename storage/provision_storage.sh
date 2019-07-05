lxc storage volume create default vol1
lxc storage volume create default vol2
lxc storage volume attach default vol1 k8s-node-1 /mnt/disks/vol1 size=120GB
lxc storage volume attach default vol2 k8s-node-2 /mnt/disks/vol2 size=120GB
