#!/bin/bash
kubectl create namespace app
kubectl apply -f web-app/ --namespace app
kubectl apply -f kube-state-metrics/

