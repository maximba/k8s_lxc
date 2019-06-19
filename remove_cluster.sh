#!/bin/bash

for container in k8s-master k8s-node-1 k8s-node-2
do
  lxc delete --force $container
done
  