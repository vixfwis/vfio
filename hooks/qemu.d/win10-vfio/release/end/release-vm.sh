#!/bin/bash

set -x
source /etc/libvirt/hooks/qemu.d/win10-vfio/win10-vfio.conf

vfio-isolate \
	restore $UNDOFILE

taskset -pc $CORE_RANGE 2  # kthreadd reset
