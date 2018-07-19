#!/usr/bin/env bash

echo "installing etcd operator"
#kubectl  create -f manifests/deployment.yaml
#kubectl  rollout status -f manifests/deployment.yaml
helm init
helm install stable/etcd-operator --name etcd-operator

echo "pausing for 10 seconds for operator to settle"
sleep 10

kubectl  create -f manifests/example-etcd-cluster.yaml

echo "installing etcd cluster service"
kubectl  create -f manifests/service.json

echo "waiting for etcd cluster to turnup"
sleep 10
