ARG BUILD_FROM
FROM ${BUILD_FROM}

# Install OpenCloud
RUN apk add --no-cache \
    ca-certificates \
    bash \
    s6

# Copy OpenCloud application
COPY rootfs / 

# Copy startup script
COPY run.sh /

RUN chmod +x /run.sh

ENTRYPOINT [ "/init" ]
CMD []
