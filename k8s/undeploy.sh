#!/bin/bash
kubectl delete pod/mongodb
kubectl delete svc/mongodb-service
kubectl delete deploy/cloudl-server-deployment
kubectl delete deploy/cloudl-client-deployment
kubectl delete svc/cloudl-server-service
kubectl delete svc/cloudl-client-service
kubectl delete hpa/cloudl-server-deployment
kubectl delete pv/cloudl-pv-volume
kubectl delete pvc/cloudl-pv-claim
kubectl get pods
