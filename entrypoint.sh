#!/bin/bash
set -e

# Fix permissions on the data directory (run as root)
if [ -d "/data/.openclaw" ]; then
  echo "Fixing permissions on /data/.openclaw..."
  chmod -R 755 /data/.openclaw
  chown -R node:node /data/.openclaw
  echo "Permissions fixed."
fi

# Switch to node user and run the app
exec su-exec node node src/server.js
