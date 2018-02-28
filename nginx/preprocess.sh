#!bin/bash

echo Expanding environment variables

envsubst '\$GATEWAY_WORKER_CONNECTIONS,\${NG_NAME}' < /etc/nginx/nginx.conf.template > /etc/nginx/nginx.conf
echo Removing conditional sections
# if NODE_ENV environment variable != "development", then remove #if NODE_ENV=development/#endif sections
if [ "$NODE_ENV" != "development" ]; then
    sed -i '/^\s*#if NODE_ENV=development\s*$/,/^\s*#endif\s*$/d' /etc/nginx/nginx.conf
fi

echo Final nginx configuration:
cat /etc/nginx/nginx.conf
echo