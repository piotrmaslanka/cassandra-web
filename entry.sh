#!/bin/bash

exec cassandra-web --hosts "$HOSTS" --port "$PORT"
