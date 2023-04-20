#!/bin/bash

set -x
source /etc/libvirt/hooks/qemu.d/win10-vfio/win10-vfio.conf

(sleep 5 && ddcutil setvcp $DDC_INPUT_CMD $DDC_GUEST_INPUT) &
