#!/bin/bash

kubectl config set-credentials jenkins --token=$(cat /var/run/secrets/kubernetes.io/serviceaccount/token)
kubectl config set-cluster minikube --server="https://192.168.99.100:8443" --certificate-authority="/var/run/secrets/kubernetes.io/serviceaccount/ca.crt"
kubectl config set-context jenkins-minikube --cluster=minikube --user=jenkins --namespace=$(cat /var/run/secrets/kubernetes.io/serviceaccount/namespace)
kubectl config use-context jenkins-minikube && kubectl config view