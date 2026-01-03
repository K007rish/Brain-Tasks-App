#!/bin/bash
set -e

echo "Updating kubeconfig"
aws eks update-kubeconfig --region us-east-1 --name braintask2

echo "Deploying application"
kubectl apply -f k8s/deployment.yaml
kubectl apply -f k8s/service.yaml

kubectl rollout status deployment/braintask
