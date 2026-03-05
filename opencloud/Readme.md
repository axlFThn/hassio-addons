# OpenCloud Add-on

OpenCloud is an open-source file management, sharing, and collaboration platform.

## Installation

Add this repository to your Home Assistant instance:
`https://github.com/axlFThn/hassio-addons`

Then install the OpenCloud add-on.

## Configuration

### Admin Credentials
- `admin_user`: Admin username (default: admin)
- `admin_password`: Admin password (set a strong password!)
- `log_level`: Logging level (default: info)

### Example Configuration
```yaml
log_level: info
admin_user: admin_user
admin_password: your_secure_password
```

## Web Interface

After starting, access OpenCloud at:
`http://your-home-assistant-ip:8080`

## Support

For OpenCloud support, visit: https://github.com/opencloud-eu/opencloud
