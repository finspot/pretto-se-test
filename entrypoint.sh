#!/bin/bash
set -xe

if [ -f tmp/pids/server.pid ]; then
    rm tmp/pids/server.pid
fi

exec "$@"
