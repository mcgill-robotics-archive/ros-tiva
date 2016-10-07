#!/usr/bin/env bash

git clone https://github.com/utzig/lm4tools.git
cd lm4tools/lm4flash
make
sudo cp lm4flash /usr/local/bin
