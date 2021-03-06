#!/bin/bash

source lib.sh

INSTALL_PACKAGES=(
    avahi-daemon vim lshw iotop screen # essentials
    docker-ce # docker
    docker-compose #docker-compose
    quicksynergy # dogi
    matchbox-keyboard # virtual keyboard
    mdadm initramfs-tools rsync # for RAID1
    elinks # text mode web browser
    hostapd dnsmasq # rpi access point
    dos2unix # for converting dos characters to unix in autorunonce
    nodejs # version 8.5.0-1nodesource1
    autossh
    python3-pip python3-dbus
    bluez minicom bluez-tools libbluetooth-dev # bluetooth hotspot
    avahi-autoipd # for usb0
    rng-tools # for ap bridge
)

if [[ ${INSTALL_PACKAGES:-} ]] ; then
    echo "Installing ${INSTALL_PACKAGES[*]}"
    _apt install "${INSTALL_PACKAGES[@]}" || die "Could not install ${INSTALL_PACKAGES[*]}"
fi
