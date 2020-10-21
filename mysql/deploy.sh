#!/bin/bash

kubectl create ns mysql
kubectl apply -f mysql-secret.yaml -n mysql
kubectl apply -f mysql-configmap.yaml -n mysql
kubectl apply -f mysql-svc.yaml -n mysql
kubectl apply -f mysql-sts.yaml -n mysql
