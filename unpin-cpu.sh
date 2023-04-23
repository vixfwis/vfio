#!/bin/bash

set -x

source hooks/qemu.d/win10-vfio/win10-vfio.conf

systemctl set-property --runtime -- user.slice AllowedCPUs=$HOST_CORES
systemctl set-property --runtime -- system.slice AllowedCPUs=$HOST_CORES
systemctl set-property --runtime -- init.scope AllowedCPUs=$HOST_CORES
