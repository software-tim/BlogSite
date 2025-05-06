#!/bin/bash

# Make sure CLIENT_ID is set
CLIENT_ID=$(az ad app list --display-name "github-actions-astro-deploy" --query "[0].appId" -o tsv)

# Create the service principal for the app
az ad sp create --id "$CLIENT_ID"

# Assign Contributor role on your resource group
az role assignment create \
  --assignee "$CLIENT_ID" \
  --role "Contributor" \
  --scope "/subscriptions/$SUBSCRIPTION_ID/resourceGroups/$RESOURCE_GROUP"

echo "✔️ Service Principal assigned Contributor role"
