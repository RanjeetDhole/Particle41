# Particle41



Here’s the clear and structured documentation for your workflow:




# Azure Deployment Workflow: ACR, AKS, and Terraform Automation
- Build & Push Docker Image to Azure Container Registry (ACR)
Steps:
- Create a Dockerfile for the Flask application.
- Create main.py to run the application using Flask.
- Create requirements.txt to list Python dependencies.
- Write first.sh script to automate ACR creation, image build, and push.
- Execute first.sh to build and push the image.




# Setup Virtual Network & Kubernetes Cluster Using Terraform
Steps:
- Create a Terraform module for the Virtual Network with:
     Public Subnets
     Private Subnets
- Run Terraform commands to apply VNet configuration.
- Create an Azure Kubernetes Service (AKS) module with:
- Single-node agent pool
- Standard compute family
- Deploy application on AKS using Kubernetes manifests.
- Apply deployment and service files with LoadBalancer.



# commands 
- Containerized microservice with Azure Container Registry
- Terraform-managed Azure infrastructure
- Deployment on Azure Kubernetes Service (AKS)

- az aks get-credentials --resource-group Particle41 --name particle41-aks
- kubectl apply -f aks-deployment.yaml
- kubectl apply -f aks-service.yaml
-  az aks update --resource-group ranjeet-test --name astoncluster --attach-acr particle41registry
- curl -v http://4.208.19.110
- kubectl port-forward svc/test-service 8080:80
- az aks update --resource-group ranjeet-test --name astoncluster --attach-acr  particle41registry              


terrform init
terraform validate 
terraform plan 
terraform apply --auto-approve
terraform destroy --auto-approve
