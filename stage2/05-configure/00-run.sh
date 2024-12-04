#!/bin/bash -e

install -m 644 files/services/spotifyd.service "${ROOTFS_DIR}/etc/systemd/user/spotifyd.service"