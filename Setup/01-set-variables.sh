#!/bin/bash

# Set this based on your project
export RESOURCE_GROUP="blog-rg"
export LOCATION="westus"
export WEBAPP_NAME="TimBlogSite"

# Get your subscription ID
export SUBSCRIPTION_ID=$(az account show --query id -o tsv)

echo "✔️ Variables set:"
echo "  RESOURCE_GROUP=$RESOURCE_GROUP"
echo "  LOCATION=$LOCATION"
echo "  WEBAPP_NAME=$WEBAPP_NAME"
echo "  SUBSCRIPTION_ID=$SUBSCRIPTION_ID"
