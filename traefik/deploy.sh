#!/bin/bash

kubectl apply -f traefik-ns.yaml
kubectl apply -f traefik-crd.yaml
kubectl apply -f traefik-rbac.yaml
kubectl apply -f traefik-config.yaml
kubectl apply -f traefik-ds.yaml
kubectl apply -f traefik-svc.yaml
kubectl apply -f traefik-routes.yaml
