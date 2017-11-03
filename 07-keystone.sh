#!/bin/bash
set -x
WORK_DIR=/opt/openstack-helm

helm install --namespace=openstack ${WORK_DIR}/keystone --name=keystone

sleep 10
kubectl get -n openstack pods

export OS_CLOUD=openstack_helm
openstack endpoint list