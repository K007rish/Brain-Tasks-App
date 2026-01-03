Brain Tasks App – CI/CD Deployment on AWS EKS

1. Project Overview

The Brain Tasks App project demonstrates an end-to-end DevOps CI/CD workflow for deploying a React application on AWS using cloud-native services.

The application is containerized using Docker, stored in Amazon ECR, and deployed to an AWS EKS (Kubernetes) cluster through an automated CI/CD pipeline implemented using AWS CodePipeline and AWS CodeBuild.

Every code change pushed to the GitHub repository automatically triggers the pipeline, builds a new Docker image, pushes it to Amazon ECR, and deploys the updated version to Kubernetes without manual intervention.

2. Architecture Diagram & Explanation

Architecture Flow:
GitHub → CodePipeline → CodeBuild → Amazon ECR → AWS EKS → LoadBalancer

Architecture Explanation:
GitHub hosts the application source code.
AWS CodePipeline orchestrates the CI/CD workflow.
AWS CodeBuild builds and deploys the Docker image.
Amazon ECR stores the Docker images.
AWS EKS runs the application containers.
LoadBalancer exposes the application publicly.

3. CI/CD Pipeline Explanation

Source Stage:
Connected to GitHub using AWS CodeConnections.
Triggers automatically on every commit to the main branch.

Build & Deploy Stage:
Installs Docker and kubectl.
Authenticates to Amazon ECR.
Builds and pushes Docker image.
Updates kubeconfig.
Deploys application using kubectl.

4. Setup Instructions

Prerequisites:
AWS account
GitHub account
AWS CLI configured
kubectl installed
Docker installed

Steps:
1. Clone the repository
git clone https://github.com/K007rish/Brain-Tasks-App.git
cd Brain-Tasks-App

2. Push code to main branch
Pipeline triggers automatically.

3. Verify deployment
kubectl get pods
kubectl get svc

5. Screenshots
Attach screenshots for GitHub, EKS, ECR, CodePipeline, CodeBuild logs, Pods, Services, Application UI, and LoadBalancer.

6. LoadBalancer ARN
arn:aws:elasticloadbalancing:us-east-1:<account-id>:loadbalancer/app/...

7. Conclusion

This project demonstrates a complete CI/CD workflow using AWS services and Kubernetes. It highlights automation, containerization, cloud deployment, and troubleshooting skills.
