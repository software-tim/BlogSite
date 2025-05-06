# 🔐 Add These Secrets in GitHub

Go to your repo → Settings → Secrets → Actions → New Repository Secret

Add:

- `AZURE_CLIENT_ID` → Use the Client ID from 02-create-oidc-app
- `AZURE_TENANT_ID` → Use value from 04-get-tenant-id.sh
- `AZURE_SUBSCRIPTION_ID` → Use from 01-set-variables.sh

Once added, your GitHub Actions workflow will be able to authenticate securely with Azure.
