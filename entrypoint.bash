#!/bin/bash

HOSTNAME=`hostname`

# assign defaults for env vars that aren't set
export INSTANCE_NAME=${INSTANCE_NAME-$HOSTNAME}
export LOGPLEX_CONFIG_REDIS_URL=${LOGPLEX_CONFIG_REDIS_URL-"redis://localhost:6379"}
export LOGPLEX_REDGRID_REDIS_URL=${LOGPLEX_REDGRID_REDIS_URL-"redis://localhost:6379"}
export LOGPLEX_STATS_REDIS_URL=${LOGPLEX_STATS_REDIS_URL-"redis://localhost:6379"}
export LOGPLEX_SHARD_URLS=${LOGPLEX_SHARD_URLS-"redis://localhost:6379"}
export LOCAL_IP=${LOCAL_IP-"127.0.0.1"}
export LOGPLEX_COOKIE=${LOGPLEX_COOKIE-"123456789"}
export LOGPLEX_AUTH_KEY=${LOGPLEX_AUTH_KEY-"123456789"}

command="$@"
${command}
