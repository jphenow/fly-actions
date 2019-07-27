#!/usr/bin/env bash

set -e

pwd
ls
echo "..."
ls client
echo $@
sh -c "fly $@"
