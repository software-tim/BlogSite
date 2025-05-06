#!/bin/bash

APP_NAME="github-actions-astro-deploy"

# Create the AAD app registration
az ad app create \
  --display-name "$APP_NAME" \
  --enable-id-token-issuance true \
  --sign-in-audience AzureADMyOrg

# Get the appId (Client ID)
CLIENT_ID=$(az ad app list --display-name "$APP_NAME" --query "[0].appId" -o tsv)
echo "✔️ App created with Client ID: $CLIENT_ID"
