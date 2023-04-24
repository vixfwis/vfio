#!/bin/bash

set -x

source hooks/qemu.d/win10-vfio/win10-vfio.conf

systemctl set-property --runtime -- user.slice AllowedCPUs=$CORE_RANGE
systemctl set-property --runtime -- system.slice AllowedCPUs=$CORE_RANGE
systemctl set-property --runtime -- init.scope AllowedCPUs=$CORE_RANGE
