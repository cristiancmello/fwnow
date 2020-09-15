#!/bin/sh

INOTIFYTOOLS_VERSION=3.14-8
ARCH=amd64

apt-get download inotify-tools=${INOTIFYTOOLS_VERSION}
dpkg -x inotify-tools_${INOTIFYTOOLS_VERSION}_${ARCH}.deb inotify-tools