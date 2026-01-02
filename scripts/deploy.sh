#!/bin/bash
set -e

echo "Deploying Brain Tasks application..."

kubectl apply -f k8s/deployment.yaml
kubectl apply -f k8s/service.yaml

echo "Deployment completed successfully."
