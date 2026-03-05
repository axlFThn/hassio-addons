ARG BUILD_FROM
FROM ${BUILD_FROM}

# Install dependencies
RUN apk add --no-cache \
    ca-certificates \
    curl

# Create opencloud user
RUN addgroup -g 1000 opencloud && \
    adduser -D -u 1000 -G opencloud opencloud

# Create directories
RUN mkdir -p /config /data && \
    chown -R opencloud:opencloud /config /data

# Copy scripts
COPY rootfs / 

# Set permissions
RUN chmod +x /etc/s6-overlay/s6-rc.d/*/run || true
RUN chmod +x /etc/services.d/*/run || true
