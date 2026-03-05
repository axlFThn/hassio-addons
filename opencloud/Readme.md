# OpenCloud Add-on

OpenCloud is an open-source file management, sharing, and collaboration platform with no proprietary vendor lock-in.

## About OpenCloud

- **Self-hosted**: Run your own file management platform
- **Open Source**: Full source code available
- **No Vendor Lock-in**: Built on open standards
- **Secure**: End-to-end encryption capabilities
- **Collaborative**: Share and collaborate on files

## Installation

1. Add this repository to your Home Assistant instance:
   ```
   https://github.com/axlFThn/hassio-addons
   ```

2. Install the OpenCloud add-on from the add-on store

3. Configure and start the add-on

## Configuration

### Required Options
- **initial_admin_password**: Set your admin password (minimum 8 characters recommended)
- **domain**: Base URL for accessing OpenCloud (e.g., `http://your-ip:9200`)

### Optional Options
- **log_level**: Logging level - `debug`, `info`, `notice`, `warning`, `error`, `critical` (default: `info`)

### Example Configuration
```yaml
initial_admin_password: your_secure_password
domain: http://192.168.1.100:9200
log_level: info
```

## Access OpenCloud

After starting the add-on, access OpenCloud at the configured domain URL.

Default login:
- **Username**: admin
- **Password**: (set during configuration)

## Storage

All data is stored in `/config/opencloud-config` and `/data` within the Home Assistant container, which persists across restarts.

## Important Notes

⚠️ **First Run**: The first startup will initialize OpenCloud and create necessary configuration files. This may take a minute or two.

⚠️ **Password**: Make sure to change your admin password to something strong!

⚠️ **Certificates**: If accessing remotely, configure HTTPS/TLS through your external proxy or reverse proxy.

## Support

For OpenCloud documentation and support:
- **Documentation**: https://docs.opencloud.eu
- **GitHub**: https://github.com/opencloud-eu/opencloud
- **Issues**: https://github.com/opencloud-eu/opencloud/issues

## Features

This add-on includes:
- ✅ File management and sharing
- ✅ Persistent storage
- ✅ Built-in user authentication
- ✅ External proxy support (no built-in Collabora/Calendar/Contacts)

## Changelog

### 1.0.0
- Initial release
- OpenCloud rolling release version
- External proxy configuration
- Persistent storage support
