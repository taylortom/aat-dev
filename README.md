# Kineo Azure Source
This repository contains the files necessary to build a Docker image for use in the Azure App Services hosting environment.

## Prerequisites
- Docker
- Azure CLI

## Usage
- Authenticate:
  * Azure CLI: `az login`
  * Container repo `az acr login --name kineoaat`
- Build image using `docker build . -t kineoaat.azurecr.io/<IMAGE_NAME>:<IMAGE_TAG>`
- Push image using `docker push kineoaat.azurecr.io/<IMAGE_NAME>`
