#!/usr/bin/env bash

set -e

pwd
ls
echo $@
sh -c "fly $@"
