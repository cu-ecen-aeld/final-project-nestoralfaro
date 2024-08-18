#!/bin/bash

# point to external tree
BR2_EXTERNAL=$(pwd)/openspot

# make buildroot configuration
make -C buildroot BR2_EXTERNAL=$BR2_EXTERNAL menuconfig
