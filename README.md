# Kubernetes on LXC

**L**inu**X** **C**ontainers (LXC) is an operating system-level virtualization method for running multiple isolated Linux systems (containers) on a single control host (LXC host).

LXD is the newer, better way to interface with LXC. LXD provides a system-wide daemon, a new LXC command-line client. The daemon exports a REST API, which makes the entire LXD experience very powerful and extremely simple to use.

In this tutorial, I’ll walk through the installation of LXD, LVM and Bridge-Utils on Ubuntu 18.04 and show you how to provision, deploy, and configure containers remotely.

**Note** This Repository is a Fork from https://github.com/sayems/lxc.resources adapted to use LVM instead of ZFS and Ubuntu based nodes more than Centos image based. Also provided a bastion machine to be used as ssh-proxy to use K8S Dashboard using kubectl proxy.

&nbsp;

Table of contents
--
- [Setup k8s on LXD/LXC](https://github.com/maximba/k8s_lxc/wiki/Kubernetes-on-Linux-containers)
- [Run k8s-Dashboard](https://github.com/maximba/k8s_lxc/wiki/Running-K8S-dashboard)

&nbsp;

