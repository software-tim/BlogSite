#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Change to the directory where Azure deploys the app
cd /home/site/wwwroot

# Install production dependencies
npm install --production

# Set the correct port (Azure provides PORT, fallback to 8080)
export PORT=${PORT:-8080}

# Start the Astro SSR server
node ./dist/server/entry.mjs

