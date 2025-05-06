#!/bin/bash

# Exit on error
set -e

# Change to the directory where Azure deploys the app
cd /home/site/wwwroot

# Ensure dependencies are installed
npm install --production

# Start the Astro SSR server
npm start
