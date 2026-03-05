#!/usr/bin/env bash
set -e

# Get configuration
LOG_LEVEL=$(bashio::config 'log_level')
ADMIN_PASSWORD=$(bashio::config 'initial_admin_password')
DOMAIN=$(bashio::config 'domain')

bashio::log.info "Initializing OpenCloud..."

# Create config directory if it doesn't exist
mkdir -p /config/opencloud-config
mkdir -p /data

# Set environment variables for OpenCloud
export OC_LOG_LEVEL="${LOG_LEVEL}"
export OC_URL="${DOMAIN}"
export PROXY_HTTP_ADDR="0.0.0.0:9200"
export PROXY_TLS="false"
export IDM_ADMIN_PASSWORD="${ADMIN_PASSWORD}"
export STORAGE_USERS_DRIVER="decomposed"
export STORAGE_SYSTEM_DRIVER="decomposed"

# Download or ensure OpenCloud binary exists
if [ ! -f "/opencloud/opencloud" ]; then
    bashio::log.info "Downloading OpenCloud binary..."
    mkdir -p /opencloud
    # Get latest release
    OPENCLOUD_VERSION=$(bashio::config 'opencloud_version' 'latest')
    if [ "$OPENCLOUD_VERSION" == "latest" ]; then
        OPENCLOUD_URL="https://github.com/opencloud-eu/opencloud/releases/download/rolling/opencloud-linux-amd64"
    else
        OPENCLOUD_URL="https://github.com/opencloud-eu/opencloud/releases/download/v${OPENCLOUD_VERSION}/opencloud-linux-amd64"
    fi
    
    if curl -f -L -o /opencloud/opencloud "${OPENCLOUD_URL}"; then
        chmod +x /opencloud/opencloud
        bashio::log.info "OpenCloud binary downloaded successfully"
    else
        bashio::log.error "Failed to download OpenCloud binary"
        exit 1
    fi
fi

bashio::log.info "OpenCloud setup complete"
