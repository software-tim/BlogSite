#!/bin/bash

TENANT_ID=$(az account show --query tenantId -o tsv)
echo "✔️ Tenant ID: $TENANT_ID"
