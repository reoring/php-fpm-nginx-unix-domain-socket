#!/bin/sh

envsubst '$$DOCUMENT_ROOT' \
    < /app/conf/nginx.conf.template \
    > /app/conf/nginx.conf \
    && \
    /usr/bin/supervisord -c /etc/supervisor/conf.d/supervisord.conf