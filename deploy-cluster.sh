#!/bin/bash
kubectl create namespace monitoring
kubectl apply -f web-app/deploy.yml --namespace monitoring
kubectl apply -f web-app/svc-lb.yml --namespace monitoring

git clone https://github.com/kubernetes/kube-state-metrics.git
kubectl apply -f kube-state-metrics/examples/standard --namespace monitoring

