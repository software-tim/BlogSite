#!/bin/bash

# Exit on any error
set -e

# Change to the deployment directory
cd /home/site/wwwroot

# Install only production dependencies
npm install --production

# Use the port Azure expects (usually passed in env)
PORT=${PORT:-8080}

# Log port for debug visibility
echo "Starting Astro SSR on port $PORT..."

# Start the Astro SSR server directly
node ./server/entry.mjs



