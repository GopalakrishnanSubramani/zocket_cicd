#!/usr/bin/env bash

kubectl apply -f cloudl-pv.yml
kubectl apply -f cloudl-pv-claim.yml
kubectl apply -f mongodb-pod.yml
kubectl apply -f mongodb-service.yml
kubectl apply -f cloudl-server-service.yml
kubectl apply -f cloudl-server-deployment.yml
kubectl apply -f cloudl-client-service.yml
kubectl apply -f cloudl-client-deployment.yml
kubectl autoscale deployment cloudl-server-deployment --cpu-percent=15 --min=1 --max=10
kubectl get pods
kubectl get svc
