#!/bin/bash

set -x

systemctl set-property --runtime -- user.slice AllowedCPUs=4-7,12-15
systemctl set-property --runtime -- system.slice AllowedCPUs=4-7,12-15
systemctl set-property --runtime -- init.scope AllowedCPUs=4-7,12-15
