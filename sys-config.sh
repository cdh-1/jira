#!/bin/bash

# Initialise the configuration
terraform init -input=false
# Plan and deploy
terraform plan -input=false -out=tfplan
# Apply
#terraform apply tfplan