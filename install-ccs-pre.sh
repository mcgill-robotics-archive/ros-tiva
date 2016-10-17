#!/usr/bin/env bash

# Install CS dependencies
sudo apt-get update

sudo apt-get install libc6:i386 libx11-6:i386 libasound2:i386 libatk1.0-0:i386 libcairo2:i386 libcups2:i386 libdbus-glib-1-2:i386 libgconf-2-4:i386 libgcrypt20:i386 libgdk-pixbuf2.0-0:i386 libgtk-3-0:i386 libice6:i386 libncurses5:i386 libsm6:i386 liborbit2:i386 libudev1:i386 libusb-0.1-4:i386 libstdc++6:i386 libxt6:i386 libxtst6:i386 libgnomeui-0:i386 libusb-1.0-0-dev:i386 libcanberra-gtk-module:i386 gtk2-engines-murrine:i386 unzip

sudo dpkg -i libgcrypt11_1.5.3-2ubuntu4.2_i386.deb
sudo dpkg -i libgcrypt11_1.5.3-2ubuntu4.2_amd64.deb
sudo apt-get install -f
