#!/usr/bin/env bash

mkdir -p ~/.scripts/bin
fd -e sh -E "bin/*" --base-directory ~/.scripts -a -x ln -sf {} ~/.scripts/bin/{/.}
