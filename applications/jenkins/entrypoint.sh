#!/bin/bash

kubectl config set-credentials default --token=$TOKEN
kubectl config set-cluster minikube --server="https://192.168.99.100:8443" --certificate-authority="/var/jenkins_home/.ssh/ca.crt"
kubectl config set-context jenkins-minikube --cluster=minikube --user=default --namespace=default
kubectl config use-context jenkins-minikube
kubectl config view