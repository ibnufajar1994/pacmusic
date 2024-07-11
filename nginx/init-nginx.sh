#!/bin/sh

# Path to the DH parameters file
DHPARAMS_PATH="/etc/ssl/certs/dhparam.pem"

# Check if DH parameters file already exists
if [ ! -f "$DHPARAMS_PATH" ]; then
  echo "Creating DH parameters file..."
  openssl dhparam -out "$DHPARAMS_PATH" 2048
else
  echo "DH parameters file already exists."
fi

# Enable sites by creating symlinks to sites-enabled
ln -s /etc/nginx/sites-available/stg.pac-app.online.conf /etc/nginx/sites-enabled/

# Start Nginx
nginx -g "daemon off;"
