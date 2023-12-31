#!/bin/bash
set -e

# Remove a potentially pre-existing server.pid for Rails.
rm -f /app/tmp/pids/server.pid

# Precompile assetes
RAILS_ENV=production rails assets:precompile

# Then exec the container's main process (what's set as CMD in the Dockerfile).
exec "$@"
