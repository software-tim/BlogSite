#!/bin/bash

# Exit immediately if a command exits with a non-zero status
#!/bin/bash
# Exit on first error
set -e

# Change to Azure deployment directory
cd /home/site/wwwroot

# Optional: output current location and contents for debugging
echo "Running in $(pwd)"
ls -la

# Install production dependencies
if [ -f "package.json" ]; then
  npm install --production || npm ci --production
fi

# Set default port from Azure if not already set
export PORT=${PORT:-8080}

# Start Astro SSR server
echo "Starting SSR server on port $PORT..."
exec node ./dist/server/entry.mjs


