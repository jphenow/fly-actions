#!/usr/bin/env bash

set -e

echo $@
sh -c "fly $@"
