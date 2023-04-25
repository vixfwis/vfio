#!/bin/bash

set -x
source /etc/libvirt/hooks/qemu.d/win10-vfio/win10-vfio.conf

vfio-isolate \
	-u $UNDOFILE \
	drop-caches \
	cpu-governor performance \
	cpuset-modify --cpus C$HOST_CORES /system.slice \
	cpuset-modify --cpus C$HOST_CORES /user.slice \
	compact-memory \
	irq-affinity mask C$GUEST_CORES

taskset -pc $HOST_CORES 2  # kthreadd only on host cores
