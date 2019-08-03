#!/bin/sh

set -e

mkdir -p "$HOME/.fly"
echo "access_token: $FLY_ACCESS_TOKEN" > "$HOME/.fly/credentials.yml"
sh -c "flyctl $@"
