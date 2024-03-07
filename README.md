# Kineo Azure Source
This repository contains the files necessary to build a Docker image for use in the Azure App Services hosting environment.

## Prerequisites
- Docker
- Azure CLI

## Usage
- Build image using `docker build . -t kineodev.azurecr.io/<IMAGE_NAME>:<IMAGE_TAG>`
- Push image using `docker push kineodev.azurecr.io/<IMAGE_NAME>`
