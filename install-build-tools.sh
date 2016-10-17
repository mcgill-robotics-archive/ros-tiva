#!/usr/bin/env bash

# Install GNU ARM Toolchain
sudo add-apt-repository ppa:terry.guo/gcc-arm-embedded
sudo apt-get update
sudo apt-get install gcc-arm-none-eabi

# Install dfu-util
sudo apt-get install dfu-util

# Install lm4flash
git clone https://github.com/utzig/lm4tools.git
cd lm4tools/lm4flash
make
sudo cp lm4flash /usr/local/bin
cd ../..

# Copy over Tiva Launchpad udev rules
sudo cp 99-tiva.rules /etc/udev/rules.d/99-tiva.rules

# Set up rosserial_tivac environment variables
echo "export TIVA_WARE_PATH=/opt/tivaware" >> ~/.zshrc
echo "export TIVA_FLASH_EXECUTABLE=lm4flash" >> ~/.zshrc
echo "export TIVA_WARE_PATH=/opt/tivaware" >> ~/.bashrc
echo "export TIVA_FLASH_EXECUTABLE=lm4flash" >> ~/.bashrc

sudo apt-get install ros-${ROS_DISTRO}-rosserial ros-${ROS_DISTRO}-rosserial-msgs ros-${ROS_DISTRO}-rosserial-client ros-${ROS_DISTRO}-rosserial-python

# Install rosserial_tivac
sudo apt-get install ros-${ROS_DISTRO}-rosserial-tivac
