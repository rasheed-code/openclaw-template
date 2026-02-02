#!/bin/bash
# Fix permissions on data directory
if [ -d "/data/.openclaw" ]; then
  chmod -R 777 /data/.openclaw 2>/dev/null || true
  chown -R root:root /data/.openclaw 2>/dev/null || true
fi
exec node src/server.js
