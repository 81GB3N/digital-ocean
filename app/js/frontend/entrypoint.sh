#!/bin/sh

# Check if running inside Kubernetes by looking for the service account token file
if [ -f /var/run/secrets/kubernetes.io/serviceaccount/token ]; then
  export BACKEND_HOST="backend-service.default.svc.cluster.local"
else
  export BACKEND_HOST="localhost"
fi

apk add --no-cache gettext
apk add moreutils

# Generate NGINX configuration from template
envsubst '$BACKEND_HOST' < /etc/nginx/nginx.conf.template > /etc/nginx/nginx.conf

# Start NGINX
nginx -g "daemon off;"
