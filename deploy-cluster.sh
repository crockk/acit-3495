#!/bin/bash
kubectl create namespace app
kubectl apply -f web-app/deploy.yml --namespace app
kubectl apply -f web-app/svc-lb.yml --namespace app

kubectl apply -f kube-state-metrics/

