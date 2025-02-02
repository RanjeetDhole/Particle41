# Login to Azure
az login

# Create a container registry
az acr create --resource-group ranjeet-test --name particle41registry --sku Basic

# Login to ACR
az acr login --name particle41registry.azurecr.io


az acr check-health -n particle41registry --yes

# Build and push image
docker build -t particle41registry.azurecr.io/ranjeet .

docker push particle41registry.azurecr.io/ranjeet
