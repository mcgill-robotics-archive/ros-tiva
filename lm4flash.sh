#!/usr/bin/env bash

git clone https://github.com/utzig/lm4tools.git
cd lm4tools/lm4flash
make
sudo cp lm4flash /usr/local/bin

echo 'ATTRS{idVendor}=="1cbe", ATTRS{idProduct}=="00fd", GROUP="users", MODE="0660"' | \
sudo tee /etc/udev/rules.d/99-stellaris-launchpad.rules
