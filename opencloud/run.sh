#!/usr/bin/env bashio

set -e

# Get configuration
LOG_LEVEL=$(bashio::config 'log_level')
ADMIN_USER=$(bashio::config 'admin_user')
ADMIN_PASSWORD=$(bashio::config 'admin_password')

bashio::log.info "Starting OpenCloud..."

# Export environment variables
export LOG_LEVEL="${LOG_LEVEL}"
export OPENCLOUD_ADMIN_USER="${ADMIN_USER}"
export OPENCLOUD_ADMIN_PASSWORD="${ADMIN_PASSWORD}"

# Start OpenCloud
exec /opencloud serve
